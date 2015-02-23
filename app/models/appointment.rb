class Appointment < ActiveRecord::Base
  belongs_to :physician
  belongs_to :patient

  def count_appointments
    Appointment.count(:all)
  end
end
