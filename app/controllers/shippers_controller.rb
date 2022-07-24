class ShippersController < ApplicationController
  def new
    @shipper = Shipper.new
    @shipper.save
  end

  def create
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
