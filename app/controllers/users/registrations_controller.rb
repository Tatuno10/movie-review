# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @user = User.new
  end

  # POST /resource
  def create
    binding.pry
    @user = User.new(sign_up_params)
    unless @user.valid?
      flash.now[:alert] = @user.errors.full_messages
      render :new and return
    end
    session["devise.regist_date"] = {user: @user.attributes}
    session["devise.regist_date"][:user]["password"] = params[:user][:password]
    @preference = @user.build_preference
    render :new_preference
  end

  def create_preference
    @user = User.new(session["devise.regist_date"]["user"])
    @preference = Preference.new(preference_params)
    unless @preference.valid?
      flash.now[:alert] = @preference.errors.full_messages
      render :new_preference and return
    end
    @user.build_preference(@preference.attributes)
    if @user.save
      session["devise.regist_date"]["user"].clear
      sign_in(:user, @user)
      redirect_to root_path
    else
      flash.now[:alert] = @user.errors.full_messages
      render :new_delivery and return
    end
    
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

   protected
  
  def preference_params
    params.require(:preference).permit(
      :category_id1,
      :category_id2, 
      :category_id3
    )
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
