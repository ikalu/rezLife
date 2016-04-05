class HallHousingApplication < ActiveRecord::Base
  belongs_to :housing_application
  belongs_to :hall
end
