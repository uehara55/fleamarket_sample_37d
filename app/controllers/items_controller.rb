class ItemsController < ApplicationController

  def index
    @ladies_items = Item.where(l_category_id: 1).order("updated_at DESC").limit(4)
    @mens_items = Item.where(l_category_id: 2).order("updated_at DESC").limit(4)
    @chanels = Item.where(brand_id: 1).order("updated_at DESC").limit(4)

  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end
end
