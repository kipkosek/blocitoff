class ItemsController < ApplicationController

  def create
    @item = current_user.items.new(params.require(:item).permit(:name))
    @item.save
    # if @item.save
    #   flash[:notice] = "Item was added."
    # else
    #   flash.now[:alert] = "There was an error adding the item."
    # end

    respond_to do |format|
      format.html {redirect_to user_path(current_user)}
      format.js
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    # if @item.destroy
    #   flash[:notice] = "Item was deleted."
    # else
    #   flash.now[:alert] = "There was an error deleting the item."
    # end

    respond_to do |format|
      format.html {redirect_to user_path(current_user)}
      format.js
    end
  end
end
