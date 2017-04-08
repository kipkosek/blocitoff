class ItemsController < ApplicationController

  def create
    @item = current_user.items.new(params.require(:item).permit(:name))
    @item.save

    respond_to do |format|
      format.html {redirect_to user_path(current_user)}
      format.js
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html {redirect_to user_path(current_user)}
      format.js
    end
  end
end
