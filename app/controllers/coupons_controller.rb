class CouponsController < ApplicationController

  def index # '/coupons' this riute in thr browser should load all coupons
    @coupons = Coupon.all
    # erb :index
    # (loads the homepage)
  end

  def show
    @coupon = Coupon.find(params[:id])

  end

  def new
    @coupon = Coupon.new
  end

  def create #post method
    student_params = params.require(:coupon).permit(:store, :coupon_code)
    @coupon = Coupon.create(student_params)
    redirect_to coupon_path(@coupon)
  end


end
