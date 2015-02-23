class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :physicians, :through => :appointments

  def count_patients
    Patient.count(:all)
  end
end
