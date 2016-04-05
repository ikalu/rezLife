ActiveAdmin.register Student do
    permit_params :fname, :lname, :st_id, :email, :password, :password_confirmation

  index do
    selectable_column
  #  #id_column
    column "First name", :fname
    column "Last name", :lname
    column "Student id", :st_id
    column :email
  #  column :current_sign_in_at
  #  column :sign_in_count
    column :created_at
    actions
  end

  filter :st_id, label: "Student id"
  filter :fname_or_lname_eq, as: :string, label: "Name"
  #filter :lname, label: "Last name"
  filter :email
  #filter :current_sign_in_at
  #filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Student Details" do
      f.input :fname, label: "First name"
      f.input :lname, label: "Last name"
      f.input :st_id, label: "Student ID"
      f.input :email
      f.input :password
      f.input :password_confirmation
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
