class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    p reservation_params
    @guest = Guest.create(guests_params[:guests])
    p '*' * 50
    p @guest
    @reservation = Reservation.new(reservation_params)
    p '*' * 50
    p @reservation
    @reservation.guest_id = @guest.id
    @reservation.save!
    render 'show'
  end

  def show
  end

  private
  def reservation_params
    params.require(:reservation).permit(:quantity, :check_in, :check_out, :comments)
  end

  def guests_params
    params.require(:reservation).permit(guests: [:first_name, :last_name, :email])
  end

end
