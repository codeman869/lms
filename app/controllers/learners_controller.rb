class LearnersController < ApplicationController
  def new
    @learner = Learner.new
  end

  def create
    @learner = Learner.new(learner_params)
    if @learner.save
      session[:user_id] = @learner.id
      redirect_to course_types_path
    else
      redirect_to signup_url
    end
  end
  
  private
  
  def learner_params
     params.require(:learner).permit(:first_name, :last_name, :email, :password, :password_confirmation) 
  end
end
