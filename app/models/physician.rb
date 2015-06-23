# == Schema Information
#
# Table name: physicians
#
#  id         :integer          not null, primary key
#  name       :string
#  speciality :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Physician < ActiveRecord::Base
  has_many :appointments
  has_many :patients, :through => :appointments

  def count_physicians
    Physician.all.count.to_i
  end


end
