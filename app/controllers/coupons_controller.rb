class CouponsController < ActiveRecord::Base


    def index
        @coupons = Coupon.all
    end
    
    def show
        @coupons = Coupon.find(params[:id])
    end
    
    def new
    end
    
    def create
        @coupons = Coupon.new
        @coupons.coupon_code = params[:coupon_code]
        @coupons.store = params[:store]
        @coupons.save
          redirect_to coupons_path(@coupons)
    end
end
