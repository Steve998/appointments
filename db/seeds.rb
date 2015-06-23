# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


2.times do |a|
  Patient.create(name: Faker::Name.name,
                :age => Faker::Number.number(2))
end

2.times do |x|
  Physician.create(name: Faker::Name.name,
                    speciality: Faker::Commerce.department(1))
end

Patient.all.each do |patient|
  1.times do |x|
    doctor = Physician.ids.shuffle.first
    Appointment.create(physician_id: doctor,
        patient_id: patient.id,
        appointmentdate: Faker::Time.forward(22, :morning),
        remote_image_url: "http://lorempixel.com/400/200/"))
      end
end
