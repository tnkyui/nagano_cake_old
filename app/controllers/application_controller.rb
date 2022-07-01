class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when Customer
      user_root_path
    when AdminUser
      admin_root_path
    end
  end
end
