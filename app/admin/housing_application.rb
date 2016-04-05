ActiveAdmin.register HousingApplication do
  remove_filter :hall_housing_applications

  index do
    selectable_column
    column :academic_year
    column "Student id", :stud_id
    column "Classification", :student_classifications do |klas|
      c = klas.student_classifications

      if (c.length > 0)
        a = []
        "#{c.length.times { |i| a << c[i].classification}; a.join(", ")}"
      else
        "No classification selected"
      end

    end
    column :created_at
    actions
  end

  filter :academic_year, as: :select, multiple: false, collection: (2010..Time.now.year).map { |year| "#{year} / #{year + 1}" }
  filter :stud_id, label: "Student ID" #, as: :select, multiple: false, collection: proc{Student.pluck :st_id}
  filter :gender, as: :select, multiple: false, collection: ["Male", "Female"].map {|gen| "#{gen}" }
  filter :student_classifications, as: :select, collection: StudentClassification.all.map(&:id), label: "Classification"

  show do
    attributes_table do
      row :student_id do
        app = HousingApplication.find(params[:id])
        "#{app.student.fname} #{app.student.lname}"
      end

      row :academic_year
      row :semester
      row :home_address
      row :home_phone
      row('Student ID') {|x| x.stud_id}
      row :gender
      row :parent_name
      row :parent_address
      row :parent_home_telephone
      row :parent_work_telephone

      row :student_classification do
        app = HousingApplication.find(params[:id])
        z = app.student_classifications
        if (z.length > 0)
          a = []
          "#{z.length.times { |i| a << z[i].classification}; a.join(", ")}"
        else
          "No classification selected"
        end
      end

      row :room1

      row :room2

      row :room3

      row :roommate_preference
      row :roommate1
      row :roommate2
      row :roommate3
      row :any_disability
      row :disability_description
      row :previous_application
      row :created_at
      row :updated_at
    end
    active_admin_comments
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
