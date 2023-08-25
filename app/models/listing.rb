class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings
  validates :title, :description, :user_id, :listing_address, presence: true
end
