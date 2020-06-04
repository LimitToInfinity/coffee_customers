class CoffeesController < ApplicationController

    def index
        @coffees = Coffee.all
        render json: @coffees, include: [ :shop ]
    end

    def create
        @coffee = Coffee.create({
            name: params[:name],
            price: params[:price],
            shop_id: params[:shop_id] 
        })

        render json: @coffee
    end

end
