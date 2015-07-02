class SessionsController < ApplicationController
  def new
  end

  def create
    learner = Learner.find_by_email(params[:session][:email])
    if learner && learner.authenticate(params[:session][:password])
      session[:user_id] = learner.id
      redirect_to root_url
    else
      redirect_to login_url
    end
  end

  def destroy
  end
end
