class ConsigneesController < ApplicationController
  def new
    @consignee = Consignee.new
  end

  def create
    @consignee = Consignee.new(consignee_params)

    if @consignee.save
      redirect_to @consignee, notice: 'Consignee successfully created'
    else
      render :new
    end
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

  private

  def consignee_params
    params.require(:consignee).permit(:name, :user_id)
  end
end
