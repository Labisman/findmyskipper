class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

def index
  @listings = Listing.all
end

def show
end

def new
  @listing = Listing.new
end

def create
  @listing = Listing.new
  @listing.save
end

def edit
end

def update
  if @listing.update(listing_params)
    redirect_to @listing, notice: "Listing was successfully updated."
  else
    render :edit
  end
end

def destroy
  @listing.destroy
end

private

def set_listing
  @listing = Listing.find(params[:id])
end

def listing_params
  params.require(:listing).permit(:title, :description, :rating, :user_id, :listing_address)
end

end
