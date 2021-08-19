class WishlistsController < ApplicationController
  def index
    @wishes = Wishlist.all
  end

  def new
    @wish = Wishlist.new
  end

  def create
    @wish = Wishlist.new(params.require(:wishlist).permit(:name, :status, :user_id))
    if @wish.save
      redirect_to wishlists_path
    else
      render :new
    end
  end
end
