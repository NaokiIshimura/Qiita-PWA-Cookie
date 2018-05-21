class StaticPagesController < ApplicationController
  def home
  end
  
  def login
    session[:user_id] = 1
    cookies[:user_id] = 1
    
    redirect_to root_path
  end
  
  def logout
    session.delete :user_id
    cookies.delete :user_id
    
    redirect_to root_path
  end
end
