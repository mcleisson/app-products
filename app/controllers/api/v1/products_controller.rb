class Api::V1::ProductsController < Api::V1::BaseController
  def index
    respond_with Product.all
  end

  def create
    respond_with :api, :v1, Product.create(product_params)
  end

  def destroy
    respond_with Product.destroy(params[:id])
  end

  def update
    item = Product.find(params["id"])
    item.update_attributes(product_params)
    respond_with item, json: product
  end

  private

  def product_params
    params.require(:product).permit(:id, :title, :description, :value, :value_promotion, :status, :category_id, :tag_id)
  end
end
