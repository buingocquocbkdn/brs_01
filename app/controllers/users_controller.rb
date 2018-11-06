class UsersController < ApplicationController
  before_action :logged_in_user, only: %i(show index)
  before_action :find_user, only: %i(show)

  def show; end

  def index
    @users = User.paginate page: params[:page],
      per_page: Settings.pages.per_page
  end

  private

  def find_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "controllers.users.not_found"
    redirect_to root_path
  end
end
