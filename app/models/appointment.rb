# == Schema Information
#
# Table name: appointments
#
#  id              :integer          not null, primary key
#  physician_id    :integer
#  patient_id      :integer
#  appointmentdate :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :string
#

class Appointment < ActiveRecord::Base

  belongs_to :physician
  belongs_to :patient
  mount_uploader :image, AvatarUploader

  def count_appointments
    Appointment.count(:all).to_i
  end
end
