class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :housing_application

  #has_many :hall_assignments
  #has_many :halls, through: :hall_assignments
  
  validates :password, presence: true
  validates :st_id, presence: true
  validates(
    :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A.+@claflin\.edu\z/i }
  )

  default_scope { order("email ASC") }

  before_save :downcase_data

  private

  def downcase_data
    self.email = email.downcase
  end
end
