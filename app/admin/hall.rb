ActiveAdmin.register Hall do
  remove_filter :hall_housing_applications
  permit_params :name, :num_of_room, :manager, :info, :avatar

  index do
    selectable_column
    column :name
    column "Number of Rooms", :num_of_room
    column :manager
    actions
  end

  filter :name
  filter :manager

  form do |f|
    f.inputs "Hall Details" do
      f.input :name
      f.input :num_of_rooms, label: "Number of Rooms"
      f.input :manager
      f.input :info, label: "About"
      f.input :avatar, as: :file, label: "Picture"
    end
    f.actions
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
