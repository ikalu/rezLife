class HousingApplication < ActiveRecord::Base
  belongs_to :student
  has_and_belongs_to_many :student_classifications
  has_many :hall_housing_applications
  has_many :halls, through: :hall_housing_applications

  validates :acknowledgement, acceptance: true
  validates_uniqueness_of :stud_id, scope: :academic_year, message: "have already submitted an application for this year"

  delegate :email, to: :student, allow_nil: true
end
