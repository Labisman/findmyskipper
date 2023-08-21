class BookingsController < ApplicationController
  before_action :set_booking, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookmark_params)
    @booking.user = current_user
    @booking.listing = @listing
    @booking.status = "pending"
    @booking.save
  end

  def index
    @bookings = Booking.all
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render "edit"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  private

  def set_booking
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
