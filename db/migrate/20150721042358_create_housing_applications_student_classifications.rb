class CreateHousingApplicationsStudentClassifications < ActiveRecord::Migration
  def change
      create_table :housing_applications_student_classifications, id: false do |t|
          t.belongs_to :housing_application
          t.belongs_to :student_classification
    end
  end
end
