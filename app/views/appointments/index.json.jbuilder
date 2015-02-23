json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :patient_id, :physician_id, :appointmentdate
  json.url appointment_url(appointment, format: :json)
end
