class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: [:show, :edit, :update, :destroy]

  # GET /subcategories
  # GET /subcategories.json
  def index
    @categories = Category.all
    if params[:cat].present?
      @subcategories = Subcategory.all.where(category_id: params[:cat].to_i)
    else
      @subcategories = Subcategory.all
    end
    # raise @subcategories.inspect
  end

  # GET /subcategories/1
  # GET /subcategories/1.json
  def show
  end

  def show_admin
    @subcategory = Subcategory.find(params[:id].to_i)
  end
  # GET /subcategories/new
  def new
    @subcategory = Subcategory.new
  end

  # GET /subcategories/1/edit
  def edit
    # raise 
  end

  # POST /subcategories
  # POST /subcategories.json
  def create
    @subcategory = Subcategory.new(subcategory_params)

    respond_to do |format|
      if @subcategory.save
        format.html { redirect_to show_admin_subcategories_path(id:@subcategory.id), notice: 'Subcategory was successfully created.' }
        format.json { render :show, status: :created, location: @subcategory }
      else
        format.html { render :new }
        format.json { render json: @subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategories/1
  # PATCH/PUT /subcategories/1.json
  def update
    respond_to do |format|
      if @subcategory.update(subcategory_params)
        format.html { redirect_to show_admin_subcategories_path(id:@subcategory.id), notice: 'Subcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcategory }
      else
        format.html { render :edit }
        format.json { render json: @subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategories/1
  # DELETE /subcategories/1.json
  def destroy
    @subcategory.destroy
    respond_to do |format|
      format.html { redirect_to admin_panels_path, notice: 'Subcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategory_params
      # raise
      params.require(:subcategory).permit(:name, :category_id, :specifications,
                                          :avatar0,
                                          :avatar1,
                                          :avatar2,
                                          :avatar3,
                                          :avatar4,
                                          :avatar5)
        end
end
