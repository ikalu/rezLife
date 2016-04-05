class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def not_found
    render file: "#{Rails.root}/public/404.html",  status: 404
  end
  protect_from_forgery with: :exception
end
