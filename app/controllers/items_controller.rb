class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def new
    @item = Item.new
    @item.images.build
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new, flash[:alert]="必要事項を記入してください"
    end
  end

  def show
  end

  private
  def item_params
    params.require(:item).permit(:name, :explain, :lcategories_id, :mcategories_id, :scategories_id, :brands_id, :size, :condition, :shipping_cost, :area, :shipping_date,:price, images_attributes: [:image_url]).merge(user_id: current_user.id)
  end
end

