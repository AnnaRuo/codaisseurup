class RegistrationsController < ApplicationController
before_action :authenticate_user! #requires that user is always signed in before running create action!
  def create
    @registration = current_user.registrations.new(registation_params.merge(event_id: params[:event_id])
    @registration.set_total_price
    @registration.save

    redirect_to @registration.event, notice: "Thank you for registration!"
  end

  private

  def registation_params
    params.require(:registration).permit(:guests_count, :event_id)
  end
end
