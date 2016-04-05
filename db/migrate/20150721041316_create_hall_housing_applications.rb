class CreateHallHousingApplications < ActiveRecord::Migration
  def change
      create_table :hall_housing_applications, id: false do |t|
          t.belongs_to :hall
          t.belongs_to :housing_application
      
        t.timestamps null: false
    end
  end
end
