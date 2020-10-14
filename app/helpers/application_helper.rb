module ApplicationHelper
  def log_or_not_app
    log_array = []
    if user_signed_in?
      log_array[0] = link_to 'Log Out', destroy_user_session_path, method: :delete
    else
      log_array[0] = link_to 'Log In', new_user_session_path
      log_array[1] = link_to 'Sign Up', new_user_registration_path
    end
    log_array
  end
end
