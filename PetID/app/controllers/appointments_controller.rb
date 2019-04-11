# frozen_string_literal: true

class AppointmentsController < ApplicationController
  def index
    if params[:user_id]
      @appointments = User.find(params[:user_id]).appointments
      @user = User.find(params[:user_id])
    else
      flash[:notice] = 'You Currently Do Not Have Any Appointments'
      redirect_to new_user_appointment_path
    end
  end

  def new
    @appointment = Appointment.new(user_id: params[:user_id])
  end

  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def show
    @appointment = appointment
    @user = current_user # added this because user_id wasn't working in show view
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
    params.require(:appointment).permit(:reason_for_visit, :date_time, :user_id)
  end

  def appointment
    @appointment ||= Appointment.find(params[:id])
  end
end
