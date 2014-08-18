class UsersController < Devise::RegistrationsController

def index
  @users = User.all
end

def create
  super
  @user.role = "user"
  @user.save!
end


private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:users) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :first_name, :last_name, :address_1, :address_2, :role, :postcode, :city, :phone, :email)
    end
  end

  def client_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :uid, :provider, :first_name, :last_name, :address_1, :address_2 :role, :postcode, :city, :phone, :email)
  end

protected

  def after_sign_up_path_for(resource)
    root_path
  end

end

