class CoursesController < ApplicationController
  def new
    @course = Course.new
    @courseTypes = CourseType.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
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
