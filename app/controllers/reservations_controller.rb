class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservations.create(params[:reservation])
  end
end
