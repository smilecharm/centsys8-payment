#app/controllers/front/my/resigns_controller.rb
def edit

end

def destroy
  current_user.destroy
  redirect_to root_path, notice: '탈퇴했습니다.'
end