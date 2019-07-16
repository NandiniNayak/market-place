class BuyerController < ApplicationController
  def page
    @car = Car.find(params[:car_id])
    @seller = Seller.find(params[:seller_id])
  end

  def payment
    # populate buyers
    # this makes a new buyer entry each time, instead we should have asscoiated a profile to a buyer while a profile was created during register to buy (code move dto profile controller create method)
    # @buyer = Buyer.new
    # @buyer.profile_id = current_user.profile.id
    # @buyer.save

    # find the buyer from Buyers table whose profile_id matches logged in users profile
    @buyer = Buyer.find_by(profile_id: current_user.profile.id)


    @car = Car.find(params[:car_id])
    # link a buyer to the car
    @buyer.cars << @car

    # populate buyers_sellers table
    @seller = Seller.find(params[:seller_id])
    @buyer.sellers <<  @seller

    # redirect to @car page to leave  a review
    redirect_to @car, notice: "payment made successfully"
  end
end
