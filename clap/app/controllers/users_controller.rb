class UsersController < QuizController

  def index
  end

  def show
    @user = current_user
  end

  def edit
  	@user = current_user
  end

  def update
  	@user = current_user
  end

end