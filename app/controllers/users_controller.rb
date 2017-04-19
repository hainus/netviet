class UsersController < ApplicationController
  def index
  end

  def update_profile
    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end
    current_user.update_attributes(profile_params)

    if @current_user.errors.empty?
      redirect_to root_path, notice: I18n.t("common.update_users_success")
    else
      render :edit_profile
    end

  end

  private

  def profile_params
    params.require(:user).permit(:email, :password, :password_confirmation, avatar: [:avatar_file_name, :avatar_file_size, :avatar_content_type, :avatar_updated_at])
  end
end
