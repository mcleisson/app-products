class Api::V1::CategoriesController < Api::V1::BaseController
  def index
    respond_with Category.all
  end

  def create
    respond_with :api, :v1, Category.create(category_params)
  end

  def destroy
    respond_with Category.destroy(params[:id])
  end

  def update
    item = Category.find(params["id"])
    item.update_attributes(category_params)
    respond_with item, json: product
  end

  private

  def category_params
    params.require(:category).permit(:id, :name, :description)
  end
end
