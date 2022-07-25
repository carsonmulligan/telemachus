class ShipmentsController < ApplicationController

  def index
    @shipments = Shipment.all
  end

  def new
    @shipment = Shipment.new
  end

  def create
    @shipment = Shipment.new(shipment_params)
    @shipment.user = current_user

    if @shipment.save
      redirect_to @shipper, notice: 'Shipment created successfully'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @shipment = Shipment.find(params[:id])
  end

  private

  def shipment_params
    params.require(:shipment).permit(:origin, :destination, :transport_mode, :commodity, :reference_number, :shipper_id,
                                     :consignee_id, :user_id)
  end
end
