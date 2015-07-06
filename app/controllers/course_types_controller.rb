class CourseTypesController < ApplicationController
  before_action :require_user
  
  def index
    @courseTypes = CourseType.all
  end

  def new
    @courseType = CourseType.new
  end

  def create
    @courseType = CourseType.new(courseTypeParams)
    
    if @courseType.save
      redirect_to root_url
    else
      redirect_to new_course_type_path
    end
  end

  def edit
  end
  
  private
  
  def courseTypeParams
    params.require(:course_type).permit(:description,:start,:end,:name)
  end
  
end
