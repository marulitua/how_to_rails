class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all
    render json: @users, include: 'name'
    #json_response(@users)
  end

  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  def show
    render json: @user, include: 'skills,experiences,experiences.achivements,references,references.contacts,educations,contacts,honors'
    #json_response(@user)
  end

  def update
    @user.update(user_params)
    head :no_content
  end

  def destroy
    @user.destroy
    head :no_content
  end

  private

  def user_params
    # whitelist params
    params.permit(:name, :dob, :position, :enthusiast, :address, :quote, :about)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
