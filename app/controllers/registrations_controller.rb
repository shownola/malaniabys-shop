class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:last_name, :email, :password, :password_confirmation)
  end

  def account_updated_params
    params.require(:user).permit(:last_name, :email, :passowrd, :password_confirmation, :current_password)
  end

end
