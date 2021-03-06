class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  layout 'admin'
  # GET /days
  # GET /days.json
  def index
    @days = Day.all.order("user_id DESC")
  end

  # GET /days/1
  # GET /days/1.json
  def show
    @time_in_health = @day.health_statuses.first
    @time_out_health = @day.health_statuses.last
  end

  # GET /days/new
  def new
    @day = Day.new
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days
  # POST /days.json
  def create
    @day = Day.new(day_params)
    @day.day_no = Day.where(user_id: @day.user_id).count + 1
    respond_to do |format|
      if @day.save
        HealthStatus.create(day_id: @day.id)
        HealthStatus.create(day_id: @day.id)
        format.html { redirect_to @day.user, notice: 'Day was successfully created.' }
        format.json { render :show, status: :created, location: @day }
      else
        format.html { render :new }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to @day, notice: 'Day was successfully updated.' }
        format.json { render :show, status: :ok, location: @day }
      else
        format.html { render :edit }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url, notice: 'Day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:image, :user_id, :note, :date_created, :day_no)
    end
end
