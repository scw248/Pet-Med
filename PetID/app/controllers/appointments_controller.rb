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
    if params[:user_id] && !User.exists?(params[:user_id])
      redirect_to new_user_registration_path alert: 'User not found.'
    else
      @appointment = Appointment.new(user_id: params[:user_id])
    end
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
    if params[:user_id]
      user = User.find_by(id: params[:user_id])
      if user.nil?
        redirect_to new_user_registration_path, alert: 'User not found.'
      else
        @appointment = user.appointments.find_by(id: params[:id])
        redirect_to user_appointments_path(user), alert: 'Appointment not found.' if @appointment.nil?
      end
    else
      @appointment = appointment
    end
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
