class ShippersController < ApplicationController

  def index
    @shippers = Shipper.all
  end

  def new
    @shipper = Shipper.new
  end

  def create
    @shipper = Shipper.new(shipper_params)

    if @shipper.save
      redirect_to @shipper, notice: 'Shipper successfully created.'
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def shipper_params
    params.require(:shipper).permit(:name, :user_id)
  end
end
