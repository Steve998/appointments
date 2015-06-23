ActiveAdmin.register Appointment do

  index do |x|
    selectable_column
    column :patient_id
    column :physician_id
    column :image do |pic|
      link_to image_tag(pic.image.medium_avatar.url)
    end
    column :appointmentdate
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :physician_id, :patient_id, :appointmentdate, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
