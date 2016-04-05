class HousingApplicationsController < ApplicationController
  before_action :authenticate_student!

  def index
    @applications = HousingApplication.all
  end

  def new
    @application = HousingApplication.new
    @application.stud_id = current_student.st_id

    check_for_preferred_roommates
  end

  def create
    @application = HousingApplication.new(housing_application_params)

    if @application.save
      flash[:notice] = "Application submitted successfully"
      redirect_to root_path
    else
      flash.now[:alert] = "Application cannot be submitted"
      render :new
    end
  end

  private

  def check_for_preferred_roommates
    @applications = HousingApplication.all
    rm = []
    @applications.each do |app|
      if ((app.roommate1 or app.roommate2 or app.roommate3).eql?(current_student.st_id))
        rm << app.student.st_id
      end
    end

    @application.roommate1 = rm[0]
    @application.roommate2 = rm[1]
    @application.roommate3 = rm[2]
  end

  def housing_application_params
    params.
      require(:housing_application).
      permit(:academic_year, :semester, :home_address, :home_phone, :stud_id, :gender, :parent_name, :parent_address, :parent_home_telephone, :parent_work_telephone, :room1, :room2, :room3, :roommate_preference, :roommate1, :roommate2, :roommate3, :any_disability, :disability_description, :previous_application, :acknowledgement, student_classification_ids: []).  #, hall_ids: []).
      merge(student: current_student)
  end
end
