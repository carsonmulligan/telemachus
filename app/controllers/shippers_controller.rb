class ShippersController < ApplicationController

  def index
    @shippers = Shipper.all
  end

  def new
    @shipper = Shipper.new
  end

  def create
    @shipper = Shipper.new(shipper_params)
    @shipper.user = current_user

    if @shipper.save
      redirect_to @shipper, notice: 'Shipper successfully created.'
    else
      render :new
    end
  end

  def show
    @shipper = Shipper.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def shipper_params
    params.require(:shipper).permit(:name, :address, :poc_name, :poc_email, :poc_phone, :office_location,
                                    :shipper_consignee_relationships, :payment_type, :user_id)
  end
end
