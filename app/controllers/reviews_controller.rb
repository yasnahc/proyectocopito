class ReviewsController < ApplicationController
before_action :set_product, only:%i[new create]

    def new
        @product = Product.find(params[:product_id])
        @review = Review.new    
    end

    def create
        @review = Review.new(review_params)
        @review.product = @product
        @review.save
        redirect_to product_path(@product)
    end

    private

    def set_product
        @product = Product.find(params[:product_id])
    end

    def review_params
        params.require(:review).permit(:content)
    end



end


