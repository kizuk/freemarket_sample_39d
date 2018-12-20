class ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  protect_from_forgery except: :purchase

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

  def confirmation
  end

  def purchase
    require 'payjp'
    Payjp.api_key = PAYJP_SECRET_KEY

    Payjp::Charge.create(
      :amount => 3500,
      :card =>   params['payjp-token'],
      :currency => 'jpy',
    )
    redirect_to action: 'buy', notice: '支払い完了しました'
    rescue Payjp::CardError
      respond_to do |format|
        format.html { redirect_to item_path(@item), notice: 'カードエラーが発生しました' }
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :explain, :lcategories_id, :mcategories_id, :scategories_id, :brands_id, :size, :condition, :shipping_cost, :area, :shipping_date,:price, images_attributes: [:image_url]).merge(user_id: current_user.id)
  end


end

