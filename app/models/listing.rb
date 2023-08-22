class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :description, :rating, :user_id, :listing_address, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5, only_integer: true }
end
