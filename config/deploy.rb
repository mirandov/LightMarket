# config valid only for current version of Capistrano
# lock '3.4.1'
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.3.0' # do not move to deploy folder!

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

set :application, 'market'
set :repo_url,    'git@github.com:mirandov/LightMarket'

# set :unicorn_pid, -> { "#{release_path}/tmp/pids/unicorn.pid" }

# set :unicorn_config_path, '/var/www/dmp/current/config/unicorn.rb'
# set :unicorn_pid, '/var/www/dmp/current/tmp/pids/unicorn.pid'

# Default branch is current local branch
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
# set :branch, ENV['REVISION'] || ENV['BRANCH_NAME'] || 'master'

# Default deploy_to directory is /var/www/my_app
# set :deploy_to in deploy/*.rb files

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :info

# Default value for :pty is false
set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :linked_dirs, %w{log tmp/pids tmp/sockets public/system public/pdf}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 10

#set :rvm_ruby_version, '2.0.0'
#set :default_env, { rvm_bin_path: '~/.rvm/bin' }
#SSHKit.config.command_map[:rake]  = "#{fetch(:default_env)[:rvm_bin_path]}/rvm ruby-#{fetch(:rvm_ruby_version)} do bundle exec rake"

# https://semaphoreapp.com/blog/2013/11/26/capistrano-3-upgrade-guide.html
# In case that you are not using +rvm+ or +rbenv+ you will need to override rake and rails commands.
#SSHKit.config.command_map[:rake]  = 'bundle exec rake'
#SSHKit.config.command_map[:rails] = 'bundle exec rails'

namespace :deploy do
  desc "Make sure local git is in sync with remote."
  task :check_revision do
    on roles(:app) do
      if fetch(:branch) == "master" && `git rev-parse HEAD` != `git rev-parse origin/master`
        # puts "WARNING: HEAD is not the same as origin/master"
        # puts "Run `git push` to sync changes."
        # exit
      end
    end
  end

  desc 'Start application'
  task :start do
    on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        execute :bundle, "exec thin -e #{fetch(:stage)} -C config/thin.yml --onebyone start"
      end
    end
  end

  desc 'Stop application'
  task :stop do
    on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        execute :bundle, "exec thin -e #{fetch(:stage)} -C config/thin.yml --onebyone stop"
      end
    end
  end

  desc 'Restart application'
  task :thin_restart do
    on roles(:app), in: :sequence, wait: 5 do
      within release_path do
        execute :bundle, "exec thin -e #{fetch(:stage)} -C config/thin.yml --onebyone restart"
      end
    end
  end

  desc 'Restart application'
  task :restart do
    # invoke 'deploy:thin_restart'
    invoke 'deploy:stop'
    invoke 'deploy:start'
  end


  before :starting, :check_revision

  # before :restart, :set_config do
  #   on roles(:app), in: :sequence, wait: 3 do
  #     within release_path do
  #       # НЕ пытайся отрефакторить это в блочную строку! Будут проблемы с '\\'
  #       execute :sed, "-i -e \"s/config.cas_base_url.*/config.cas_base_url = 'https:\\/\\/#{fetch(:auth_host)}'/\" config/initializers/devise.rb"
  #       execute :sed, "-i -e \"s/c.hosts.*/c.hosts = #{fetch(:cassandra_hosts).to_s.gsub!('"', "'")}/\" config/initializers/cassandra.rb"
  #       execute :sed, "-i -e \"s/host.*/host: '#{fetch(:ecg_service_host)}'.freeze,/\" config/initializers/ecg_service.rb"
  #     end
  #   end
  # end

  after :publishing, :restart
  after :finishing, 'deploy:cleanup'
  namespace :deploy do
    desc "reload the database with seed data"
    task :seed do
      run "cd #{current_path}; rake db:seed RAILS_ENV=#{rails_env}"
    end
  end
  # after 'deploy:publishing', 'deploy:thin_restart'

  #after :restart, :clear_cache do
  #  on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    #end
  #end

end
