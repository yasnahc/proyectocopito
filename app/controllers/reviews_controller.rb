class ReviewsController < ApplicationController
before_action :set_product, only:%i[new create destroy]

    def new
        @product = Product.find(params[:product_id])
        @review = Review.new 
        authorize @product   
    end

    def create
        @review = Review.new(review_params)
        @review.product = @product
        if @review.save
            redirect_to product_path(@product)
        else
            render :new
        end
        authorize @product
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to product_path(@product)
        authorize @product
        authorize @review
    end

    private

    def set_product
        @product = Product.find(params[:product_id])
    end

    def review_params
        params.require(:review).permit(:content, :product_id)
    end



end


