class ShipmentsController < ApplicationController
  def new
    @shipment = Shipment.new
  end

  def create
    @shipment = Shipment.new(shipment_params)

    if @shipment.save
      redirect_to @shipper, notice: 'Shipment created successfully'
    else
      render :new
    end
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def shipment_params
    params.require(:shipment).permit(:name, :user_id)
  end
end
