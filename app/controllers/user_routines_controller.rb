class UserRoutinesController < ApplicationController
  before_action :set_user_routine, only: [:show, :edit, :update, :destroy]

  # GET /user_routines
  # GET /user_routines.json
  def index
    @user_routines = UserRoutine.all
  end

  # GET /user_routines/1
  # GET /user_routines/1.json
  def show
  end

  # GET /user_routines/new
  def new
    @user_routine = UserRoutine.new
  end

  # GET /user_routines/1/edit
  def edit
  end

  # POST /user_routines
  # POST /user_routines.json
  def create
    @user_routine = UserRoutine.new(user_routine_params)

    respond_to do |format|
      if @user_routine.save
        format.html { redirect_to @user_routine.day, notice: 'User routine was successfully created.' }
        format.json { render :show, status: :created, location: @user_routine }
      else
        format.html { render :new }
        format.json { render json: @user_routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_routines/1
  # PATCH/PUT /user_routines/1.json
  def update
    respond_to do |format|
      if @user_routine.update(user_routine_params)
        format.html { redirect_to @user_routine, notice: 'User routine was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_routine }
      else
        format.html { render :edit }
        format.json { render json: @user_routine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_routines/1
  # DELETE /user_routines/1.json
  def destroy
    @user_routine.destroy
    respond_to do |format|
      format.html { redirect_to @user_routine.day, notice: 'User routine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_routine
      @user_routine = UserRoutine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_routine_params
      params.require(:user_routine).permit(:day_id, :routine_id)
    end
end
