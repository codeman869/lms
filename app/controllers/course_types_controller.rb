class CourseTypesController < ApplicationController
  before_action :require_user
  

  def new
    @courseType = CourseType.new
  end

  def create
  end

  def edit
  end
  
  private
  
  def courseTypeParams
    params.reqire(:id,:start,:end,:title).permit(:description)
  end
  
end
