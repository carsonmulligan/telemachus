class ConsigneesController < ApplicationController
  def new
    @consignee = Consignee.new
  end

  def create

  end

  def index
    @consignees = Consignee.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end
end
