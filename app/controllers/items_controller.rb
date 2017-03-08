class ItemsController < ApplicationController

  def create
    @item = current_user.items.new(params.require(:item).permit(:name))

    if @item.save
      flash[:notice] = "Item was added."
    else
      flash.now[:alert] = "There was an error adding the item."
    end

    redirect_to user_path(current_user)

  end
end
