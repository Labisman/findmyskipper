class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  def show
    @user = current_user
    @bookings = @user.bookings
    @past_bookings = @bookings.select { |booking| booking.end_date < Date.today }
    @future_bookings = @bookings.select { |booking| booking.end_date >= Date.today }
  end

  def index
    @bookings = @user.bookings
  end
end

private

def set_user
  @user = current_user
end
