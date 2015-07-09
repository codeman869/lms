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
      redirect_to course_types_path
    else
      redirect_to new_course_type_path
    end
  end

  def edit
    @courseType = CourseType.find_by_id(params[:id])
  end
  
  def update
    @courseType = CourseType.find(params[:id])
    if @courseType.update_attributes(courseTypeParams)
      redirect_to "/course_types"
    else
      redirect_to root_url
    end
    
  end
  
  def show
    @courseType = CourseType.find(params[:id])
  end
  
  private
  
  def courseTypeParams
    params.require(:course_type).permit(:description,:name,:is_active)
  end
  
end
