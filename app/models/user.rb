class User < ActiveRecord::Base
  before_create :create_role
  has_many :users_roles
  has_many :roles, :through => :users_roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def has_role?(role)
    i = 0
    self.roles.each do |r|
      if r.name == role
        i +=1
      end
    end
    i == 1 ? true : false
  end
  private
   def create_role
     self.roles << Role.find_by_name("user")
   end
end
