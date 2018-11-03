class AdminPanelsController < ApplicationController
  def index
    @categories = Category.all
    @subcategories = Subcategory.all
    @products      = Product.all
  end

  def show

  end

  def description

  end
end
