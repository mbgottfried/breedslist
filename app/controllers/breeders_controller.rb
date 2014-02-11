class BreedersController < ApplicationController
  before_action :set_breeder, only: [:show, :edit, :update, :destroy]

  def index
    @breeders = Breeder.all
  end

  def show
  end

  def new
    @breeder = Breeder.new
  end

  def edit
  end

  def create
    @breeder = Breeder.new(breeder_params)
    if @breeder.save
      redirect_to @breeder, notice: 'Breeder was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @breeder.update(breeder_params)
      redirect_to @breeder, notice: 'Breeder was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @breeder.destroy
    redirect_to breeders_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breeder
      @breeder = Breeder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def breeder_params
      params.require(:breeder).permit(:description)
    end
end