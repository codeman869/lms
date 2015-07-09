class SessionsController < ApplicationController
  def new
    redirect_to course_types_path if current_user
  end

  def create
    learner = Learner.find_by_email(params[:session][:email])
    if learner && learner.authenticate(params[:session][:password])
      session[:user_id] = learner.id
      redirect_to course_types_path
    else
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
