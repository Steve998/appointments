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

require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
