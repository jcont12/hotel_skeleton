class Reservation < ApplicationRecord
  belongs_to :guest
  has_many :reservation_rooms
  accepts_nested_attributes_for :guest

  validates_presence_of :guest, :quantity, :check_in, :check_out
end
