class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def trello
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "Trello") if is_navigational_format?
    else
      redirect_to root_url
    end
  end

  private

  def after_omniauth_failure_path_for(scope)
    root_url
  end
end
