class AchieverHabitsController < ApplicationController
  before_action :set_achiever_habit, only: %i[ show edit update destroy ]

  # GET /achiever_habits or /achiever_habits.json
  def index
    @achiever_habits = AchieverHabit.all
  end

  # GET /achiever_habits/1 or /achiever_habits/1.json
  def show
  end

  # GET /achiever_habits/new
  def new
    @achiever_habit = AchieverHabit.new
  end

  # GET /achiever_habits/1/edit
  def edit
  end

  # POST /achiever_habits or /achiever_habits.json
  def create
    @achiever_habit = AchieverHabit.new(achiever_habit_params)

      if @achiever_habit.save
        redirect_to habits_path, notice: "Habit was successfully updated."
      else
        respond_to do |format| 
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @achiever_habit.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /achiever_habits/1 or /achiever_habits/1.json
  def update
    respond_to do |format|
      if @achiever_habit.update(achiever_habit_params)
        format.html { redirect_to achiever_habit_url(@achiever_habit), notice: "Achiever habit was successfully updated." }
        format.json { render :show, status: :ok, location: @achiever_habit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @achiever_habit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achiever_habits/1 or /achiever_habits/1.json
  def destroy
    @achiever_habit.destroy

    respond_to do |format|
      format.html { redirect_to achiever_habits_url, notice: "Achiever habit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achiever_habit
      @achiever_habit = AchieverHabit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def achiever_habit_params
      params.require(:achiever_habit).permit(:achiever_id, :habit_id)
    end
end
