class BreedersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_breeder, only: [:show, :edit, :update, :destroy]


  def index
    @breeders = Breeder.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  end

  def show
  end

  def new
    @breeder = current_user.breeders.build
  end

  def edit
  end

  def create
    @breeder = current_user.breeders.build(breeder_params)
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

    def correct_user
      @breeder = current_user.breeders.find_by(id: params[:id])
      redirect_to breeders_path, notice: "Not authorized to edit this breeder" if @breeder.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def breeder_params
      params.require(:breeder).permit(:description, :image)
    end
end