class AchieversController < ApplicationController
  before_action :set_achiever, only: %i[ show edit update destroy ]

  # GET /achievers or /achievers.json
  def index
    @achievers = Achiever.all
  end

  # GET /achievers/1 or /achievers/1.json
  def show
  end

  # GET /achievers/new
  def new
    @achiever = Achiever.new
  end

  # GET /achievers/1/edit
  def edit
  end

  # POST /achievers or /achievers.json
  def create
    # by adding 'current_user.controller_in_plural', the user id gets auto-assigned.
    @achiever = current_user.achievers.new(achiever_params)

    respond_to do |format|
      if @achiever.save
        format.html { redirect_to achiever_url(@achiever), notice: "Achiever was successfully created." }
        format.json { render :show, status: :created, location: @achiever }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @achiever.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /achievers/1 or /achievers/1.json
  def update
    respond_to do |format|
      if @achiever.update(achiever_params)
        format.html { redirect_to achiever_url(@achiever), notice: "Achiever was successfully updated." }
        format.json { render :show, status: :ok, location: @achiever }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @achiever.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achievers/1 or /achievers/1.json
  def destroy
    @achiever.destroy

    respond_to do |format|
      format.html { redirect_to achievers_url, notice: "Achiever was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achiever
      @achiever = Achiever.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def achiever_params
      params.require(:achiever).permit(:name, :area_of_expertise)
    end
end
