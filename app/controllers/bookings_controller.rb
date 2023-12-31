class BookingsController < ApplicationController
  before_action :set_listing, only: [:new, :create]
  before_action :set_booking, only: [:accept, :reject, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: :new

  def new
    @listing = Listing.find(params[:listing_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.listing = @listing
    @booking.status = "pending"

    respond_to do |format|
      if @booking.save
        format.html { redirect_to listing_url(@listing), notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "Booking was unsuccessful." }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  def accept
    @booking.status = "accepted"
    @booking.save
    redirect_to "/accounts/show"
  end

  def reject
    @booking.status = "rejected"
    @booking.save
    redirect_to "/accounts/show"
  end

  def index
    @bookings = Booking.all
  end

  def show
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Booking was successfully updated."
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @booking.destroy
    redirect_to '/accounts/show', status: :see_other, notice: "Your booking was successfully deleted."
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
