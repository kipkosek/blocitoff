class UsersController < ApplicationController

  def show
    # @user = params[:id].present? ? User.find(params[:id]) : current_user
    @items = current_user.items
    @item = Item.new
  end
end
