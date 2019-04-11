# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new(user_id: params[:user_id])
  end

  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def index
    if current_user.has_appointments
      @appointments = current_user.appointments
      @user = current_user
    else
      flash[:notice] = 'You Currently Do Not Have Any Appointments'
      redirect_to new_appointment_path
    end
  end

  def show
    @appointment = appointment
    @user = current_user
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
