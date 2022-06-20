class BookRecommendationsController < ApplicationController
  before_action :set_book_recommendation, only: %i[ show edit update destroy ]

  # GET /book_recommendations or /book_recommendations.json
  def index
    @book_recommendations = BookRecommendation.all
  end

  # GET /book_recommendations/1 or /book_recommendations/1.json
  def show
  end

  # GET /book_recommendations/new
  def new
    @book_recommendation = BookRecommendation.new
    # nested model:
    @book_recommendation.achiever_book_recommendations.new

  end

  # GET /book_recommendations/1/edit
  def edit
  end

  # POST /book_recommendations or /book_recommendations.json
  def create
    # by adding 'current_user.controller_in_plural', the user id gets auto-assigned.
    @book_recommendation = current_user.book_recommendations.new(book_recommendation_params)

    respond_to do |format|
      if @book_recommendation.save
        format.html { redirect_to book_recommendation_url(@book_recommendation), notice: "Book recommendation was successfully created." }
        format.json { render :show, status: :created, location: @book_recommendation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_recommendations/1 or /book_recommendations/1.json
  def update
    respond_to do |format|
      if @book_recommendation.update(book_recommendation_params)
        format.html { redirect_to book_recommendation_url(@book_recommendation), notice: "Book recommendation was successfully updated." }
        format.json { render :show, status: :ok, location: @book_recommendation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_recommendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_recommendations/1 or /book_recommendations/1.json
  def destroy
    @book_recommendation.destroy

    respond_to do |format|
      format.html { redirect_to book_recommendations_url, notice: "Book recommendation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_recommendation
      @book_recommendation = BookRecommendation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_recommendation_params
      # and to get data from nested form "achiever_book_recommendations_attributes":
      params.require(:book_recommendation).permit(:title, :author, achiever_book_recommendations_attributes: [:achiever_id])
    end
end
