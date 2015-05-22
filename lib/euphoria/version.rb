module Euphoria
  VERSION = "0.1.4.72"
end


module SessionsHelper
 
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  #check to see if user is logged in
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end

.start-content
    .gap-l-2.gap-r-2.c-14
        .form = form_for(:session, url: login_path) do |f|
          .row
              = f.label :email
              = f.email_field :email
          .row
              = f.label :password
              = f.password_field :password
          = f.submit "Log in", class: "btn green round"
    
