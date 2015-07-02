class LearnersController < ApplicationController
  def new
    @learner = Learner.new
  end

  def create
    @learner = Learner.new(params)
    if @learner.save
      redirect_to root_url
    else
      redirect_to signup_url
    end
  end
  
  private
  
  def params
     params.require(:learner).permit(:first_name, :last_name, :email, :password, :password_confirmation) 
  end
end
