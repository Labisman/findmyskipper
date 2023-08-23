class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  def show
    @user = current_user
  end

  def index
    @bookings = @user.bookings
  end
end

private

def set_user
  @user = current_user
end
