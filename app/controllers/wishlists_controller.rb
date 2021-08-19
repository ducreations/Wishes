class WishlistsController < ApplicationController
  def index
    @wishes = Wishlist.all
  end

  def new
    @wishes = Wishlist.new
  end

  def create
    @wishes = Wishlist.new(params.require(:wishlist).permit(:name, :status))
    if @wishes.save
      redirect_to wishlists_path
    else
      render :new
    end
  end
end
