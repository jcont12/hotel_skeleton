class Guest < ApplicationRecord
  has_many :reservation_rooms

  validates_presence_of :first_name, :last_name, :emil
end
