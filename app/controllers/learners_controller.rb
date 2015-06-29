class LearnersController < ApplicationController
  def new
  end

  def create
  end
  
  private
  
  def params
     params.require(:learner).permit(:first_name, :last_name, :email, :password, :password_confirmation) 
  end
end
