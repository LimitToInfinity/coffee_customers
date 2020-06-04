class ShopsController < ApplicationController

    before_action :find_shop, only: [:show]

    def index
        @shops = Shop.all
        render json: @shops,
            include: [ coffees: { except: [:shop_id, :updated_at] } ],
            except: [ :created_at, :updated_at ]
    end

    def show
        render json: @shop
    end

    def create
        @shop = Shop.create({
            name: params["name"],
            phone_number: params["phone_number"]
        })

        render json: @shop
    end

    private

    def find_shop
        @shop = Shop.find( params[:id] )
    end

end
