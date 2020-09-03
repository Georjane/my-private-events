class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def create
    @user = User.new(params)

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