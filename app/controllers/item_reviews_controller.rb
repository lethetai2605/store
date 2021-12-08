class ItemReviewsController < ApplicationController
  before_action :set_item_review, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /item_reviews
  def index
    @item_reviews = ItemReview.all
  end

  # GET /item_reviews/1
  def show
  end

  # GET /item_reviews/new
  def new
    # @item_review = ItemReview.new
  end

  # GET /item_reviews/1/edit
  def edit
  end

  # POST /item_reviews
  def create
    # @item_review = ItemReview.new(item_review_params)
    @item_review.user_id = current_user.id

    if @item_review.save
      url = "/items/" + @item_review.item_id.to_s
      redirect_to url, notice: 'Item review was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /item_reviews/1
  def update
    if @item_review.update(item_review_params)
      redirect_to @item_review, notice: 'Item review was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /item_reviews/1
  def destroy
    @item_review.destroy
    redirect_to item_reviews_url, notice: 'Item review was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_review
      @item_review = ItemReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_review_params
      params.require(:item_review).permit(:user_id, :item_id, :review)
    end
end
