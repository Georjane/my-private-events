class UsersController < ApplicationController
  def index
    @users = User.all
    @events = Event.all
    # @user = User.new
    # reset_session
  end

  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
    # session[:current_user_id] = user.id
  end

  def create
    @user = User.new(params)
    session[:current_user_id] = user.id
    # how to redirect created user to his account
    respond_to do |format|
      if @user.save
        format.html { redirect_to current_user_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
    end
end
