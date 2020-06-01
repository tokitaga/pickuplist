class PickuplistsController < ApplicationController
  before_action :set_pickuplist, only: [:show, :edit, :update, :destroy]

  # GET /pickuplists
  def index
    @pickuplists = Pickuplist.all
  end

  # GET /pickuplists/1
  def show
  end

  # GET /pickuplists/new
  def new
    @pickuplist = Pickuplist.new
  end

  # GET /pickuplists/1/edit
  def edit
  end

  # POST /pickuplists
  def create
    @pickuplist = Pickuplist.new(pickuplist_params)

    if @pickuplist.save
      redirect_to @pickuplist, notice: 'Pickuplist was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pickuplists/1
  def update
    if @pickuplist.update(pickuplist_params)
      redirect_to @pickuplist, notice: 'Pickuplist was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pickuplists/1
  def destroy
    @pickuplist.destroy
    redirect_to pickuplists_url, notice: 'Pickuplist was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickuplist
      @pickuplist = Pickuplist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pickuplist_params
      params.require(:pickuplist).permit(:vin, :date, :place, :list_number, :year, :maker, :grade, :model, :cc, :mileage, :color, :score, :c_and_f, :purchase, :country, :result, :status)
    end
end
