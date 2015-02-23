class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :physician_id
      t.integer :patient_id
      t.datetime :appointmentdate

      t.timestamps null: false
    end
  end
end
