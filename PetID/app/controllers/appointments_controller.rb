# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def index
    if params[:user_id]
      @appointments = User.find(params[:user_id]).appointments
    else
      flash[:notice] = 'You Currently Do Not Have Any Appointments'
      redirect_to new_appointment_path
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    @appointment.user_id = current_user.id
    # @appointment.save
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
