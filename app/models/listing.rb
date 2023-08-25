class Listing < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  validates :title, :description, :user_id, :listing_address, presence: true
end
