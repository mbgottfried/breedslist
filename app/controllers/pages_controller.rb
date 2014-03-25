class PagesController < ApplicationController
  def home
  	 @breeders = Breeder.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 8)
  end

  def about
  end

end
