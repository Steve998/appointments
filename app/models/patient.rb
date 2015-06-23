# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  name       :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :physicians, :through => :appointments

  def count_patients
    Patient.count(:all).to_i
  end
end
