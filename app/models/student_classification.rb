class StudentClassification < ActiveRecord::Base
  has_and_belongs_to_many :housing_applications
end
