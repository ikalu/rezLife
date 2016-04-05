class Hall < ActiveRecord::Base
  has_many :hall_housing_applications
  has_many :housing_applications, through: :hall_housing_applications

  has_attached_file :avatar, styles: { medium: "1200x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


    default_scope -> { order(name: :asc) }
end
