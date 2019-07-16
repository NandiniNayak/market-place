class ReviewsController < ApplicationController
    before_action :profile_params, only: :create
    def new
        @review = Review.new
    end

    def create

    #    @review = Review.new
       @review = Review.new(profile_params)
       @seller = Seller.find(params[:seller_id])
       @review.seller = @seller
       @review.buyer_id = current_user.profile.buyer.id
       @review.save
    end

    private

    def profile_params
      params.require(:review).permit(:comment)
    end

end