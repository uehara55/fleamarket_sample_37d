class DealsController < ApplicationController
  def create
    @deals = Deal.create( item_id: deal_params[:item_id], user_id: current_user.id)
    redirect_to root_path
  end

  private
  def deal_params
    params.permit( :item_id)
  end
end
