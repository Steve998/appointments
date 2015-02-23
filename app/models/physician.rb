class Physician < ActiveRecord::Base
  has_many :appointments
  has_many :patients, :through => :appointments

  def count_physicians
    Physician.count(:all)
  end

end
