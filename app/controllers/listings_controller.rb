class ListingsController < ApplicationController
  before_action :set_restaurant, only: [:show,:edit,:update,:destroy]

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
  @list.update
end

def destroy
  @listing.destroy
end

private

def set_restaurant
  @listing = Listing.find(params[:id])
end

end
