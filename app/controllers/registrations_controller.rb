class RegistrationsController < ApplicationController
before_action :authenticate_user! #requires that user is always signed in before running create action!
  def create
    @registration = current_user.registrations.create(registation_params)

    redirect_to @registration.event, notice: "Thank you for registration!"
  end

  private

  def registation_params
    params.require(:registration).permit(:price, :guests_count, :event_id)
  end
end
