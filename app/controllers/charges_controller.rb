require 'stripe'
require 'dotenv'
Dotenv.load
class ChargesController < ApplicationController
    def create
        # byebug
        Stripe.api_key = ENV['RAILS_API_KEY']
        token = params[:charge][:token]
        # price = params[:price]
        # byebug
        location = Location.find(params[:location_id])

        charge = Stripe::Charge.create({
            amount: location.price * params[:numOfTravelers].to_i,
            currency: 'usd',
            source: token,
            description: 'Test Charge!'
        })
        render json: charge
    end
end
