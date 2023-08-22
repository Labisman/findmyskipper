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
  @listing = Listing.new(listing_params)
  respond_to do |format|
    if @listing.save
      format.html { redirect_to listing_url(@listing), notice: "Listing was successfully created." }
      format.json { render :show, status: :created, location: @listing }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @listing.errors, status: :unprocessable_entity }
    end
  end
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
    params.require(:listing).permit(:title, :description, :rating, :listing_address)
  end
end
