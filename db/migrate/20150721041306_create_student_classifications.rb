class CreateStudentClassifications < ActiveRecord::Migration
  def change
    create_table :student_classifications do |t|
      t.string :classification

      t.timestamps null: false
    end
  end
end
