class UsersController < ApplicationController
  def index
    @users = User.all
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
    # session[:current_user_id] = user.id

    # respond_to do |format|
    #   if @user.save
    #     format.html { redirect_to @event, notice: 'Event was successfully created.' }
    #     format.json { render :show, status: :created, location: @event }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @event.errors, status: :unprocessable_entity }
    #   end
    end
end