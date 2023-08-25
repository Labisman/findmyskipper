class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

def index
  @listings = Listing.all
  if params[:query].present?
    sql_subquery = "title ILIKE :query OR listing_address ILIKE :query"
    @listings = @listings.where(sql_subquery, query: "%#{params[:query]}%")
  end
end

def show
end

def new
  @listing = Listing.new
end

def create
  @listing = Listing.new(listing_params_create)
  @listing.user = current_user
    respond_to do |format|
      if params[:listing][:photos].present?
      params[:listing][:photos].each do |photo|
          @listing.photos.attach(photo)
        end
      end
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
    if params[:listing][:photos].present?
      params[:listing][:photos].each do |photo|
      @listing.photos.attach(photo)
    end
    end
    if @listing.update(listing_params_update)
      redirect_to @listing, notice: "Listing was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @listing.destroy
    redirect_to listings_path, notice: "Listing was successfully destroyed."
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params_update
    params.require(:listing).permit(:title, :description, :listing_address)
  end

  def listing_params_create
    params.require(:listing).permit(:title, :description, :listing_address, photos:[])
  end
end
