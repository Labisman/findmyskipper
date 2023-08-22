class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :user_id, :listing_id, :start_date, :end_date, presence: true
end
