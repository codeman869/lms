class CoursesController < ApplicationController
  
  def index
    @courseType = CourseType.find(params[:course_type_id])
    @courses = @courseType.courses
  end
  
  
  def new
    @course = Course.new
    @courseTypes = CourseType.find(params[:course_type_id])
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @courseType = CourseType.find(params[:course_type_id])
    @course = Course.find(params[:id])
  end
  
  def create
    @course = Course.new(courseParams)
    if @course.save 
      redirect_to "/course_types"
    else
      redirect_to root_url
    end
  end
  
  private
  
  def courseParams
    params.require(:course).permit(:start, :end, :course_type_id)
  end
  
  
end
