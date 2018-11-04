class AdminPanelsController < ApplicationController
  # load_and_authorize_resource
  before_action :authenticate_user!
  def index

    if can? :index, AdminPanel
      @categories = Category.all
      @subcategories = Subcategory.all
      @products      = Product.all
    else
      respond_to do |format|
        # protect_against_forgery with: :null_session
        format.html { redirect_to mains_path, :success => 'Trigger was successfully updated.'}
        # format.json { render :show, status: :created, location: @product }
      end
      # redirect_to mains_path
    end
  end

  def show

  end

  def description

  end
end
