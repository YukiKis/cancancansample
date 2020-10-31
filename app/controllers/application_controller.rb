class ApplicationController < ActionController::Base
  authorize_resource class: false

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to posts_path
  end 
end
