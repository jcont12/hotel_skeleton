class Reservation < ApplicationRecord
  belongs_to :guest
  has_many :reservation_rooms

  validates_presence_of :guest, :quantity, :check_in, :check_out
end
