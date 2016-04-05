class CreateHousingApplications < ActiveRecord::Migration
  def change
    create_table :housing_applications do |t|
      t.string :academic_year
      t.string :semester
      t.text :home_address
      t.string :home_phone
      t.string :stud_id
      t.string :gender
      t.string :parent_name
      t.text :parent_address
      t.string :parent_home_telephone
      t.string :parent_work_telephone
      t.text :student_classification
      t.string :room1
      t.string :room2
      t.string :room3
      t.boolean :roommate_preference
      t.string :roommate1
      t.string :roommate2
      t.string :roommate3
      t.boolean :any_disability
      t.text :disability_description
      t.boolean :previous_application
      t.references :student, index: true

      t.timestamps null: false
    end
  end
end
