# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    @appointment.user_id = current_user.id
    redirect_to appointment_path(@appointment)
  end

  def show
    @appointment = appointment
  end

  def edit
    @appointment = appointment
  end

  def update
    @appointment = appointment
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:reason_for_visit, :date_time)
  end

  def appointment
    @appointment ||= Appointment.find(params[:id])
  end
end
