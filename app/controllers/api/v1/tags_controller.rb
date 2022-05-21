class Api::V1::TagsController < Api::V1::BaseController
  def index
    respond_with Tag.all
  end

  def create
    respond_with :api, :v1, Tag.create(tag_params)
  end

  def destroy
    respond_with Tag.destroy(params[:id])
  end

  def update
    item = Tag.find(params["id"])
    item.update_attributes(tag_params)
    respond_with item, json: tag
  end

  private

  def tag_params
    params.require(:tag).permit(:id, :name)
  end
end
