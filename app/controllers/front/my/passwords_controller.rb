class Front::My::PasswordsController < ApplicationController

# app/controllers/front/my/passwords_controller.rb
  def edit
    # binding.pry
    @change_password = ChangePassword.new
  end
    
  def update
    @change_password = ChangePassword.new(password_params)
    @change_password.valid?

    unless current_user.valid_password?(@change_password.current_password)
      @change_password.errors.add(:current_password, '가 틀립니다.')
    end

    if @change_password.new_password != @change_password.new_password_confirmation
      @change_password.errors.add(:new_password_confirmation,'새로운 패스워드가 일치하지 않습니다.')
    end

    render action: :edit and return if @change_password.errors.any?
      
    current_user.password = @change_password.new_password
    current_user.save!

    redirect_to action: :edit

  end
      
  private
    def password_params
      params.require(:change_password).permit(:new_password,:new_password_confirmation,:current_password)
    end

end  