class AchieverBookRecommendationsController < ApplicationController
  before_action :set_achiever_book_recommendation, only: %i[ show edit update destroy ]

  # GET /achiever_book_recommendations or /achiever_book_recommendations.json
  def index
    @achiever_book_recommendations = AchieverBookRecommendation.all
  end

  # GET /achiever_book_recommendations/1 or /achiever_book_recommendations/1.json
  def show
  end

  # GET /achiever_book_recommendations/new
  def new
    @achiever_book_recommendation = AchieverBookRecommendation.new
  end

  # GET /achiever_book_recommendations/1/edit
  def edit
  end

  # POST /achiever_book_recommendations or /achiever_book_recommendations.json
  def create
    @achiever_book_recommendation = AchieverBookRecommendation.new(achiever_book_recommendation_params)

    
      if @achiever_book_recommendation.save
        redirect_to book_recommendations_path, notice: "Book recommendation was successfully updated."
      else
        respond_to do |format| 
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @achiever_book_recommendation.errors, status: :unprocessable_entity }
        end
      end

  end

  # PATCH/PUT /achiever_book_recommendations/1 or /achiever_book_recommendations/1.json
  def update
    respond_to do |format|
      if @achiever_book_recommendation.update(achiever_book_recommendation_params)
        format.html { redirect_to achiever_book_recommendation_url(@achiever_book_recommendation), notice: "Achiever book recommendation was successfully updated." }
        format.json { render :show, status: :ok, location: @achiever_book_recommendation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @achiever_book_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achiever_book_recommendations/1 or /achiever_book_recommendations/1.json
  def destroy
    @achiever_book_recommendation.destroy

    respond_to do |format|
      format.html { redirect_to achiever_book_recommendations_url, notice: "Achiever book recommendation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achiever_book_recommendation
      @achiever_book_recommendation = AchieverBookRecommendation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def achiever_book_recommendation_params
      params.require(:achiever_book_recommendation).permit(:achiever_id, :book_recommendation_id)
    end
end
