class PicturesController < ApplicationController
  before_action :authenticate_user!

  def index
    puts "PAULYPARAMS"
    p params
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    Picture.create(picture_params)
    redirect_to '/pictures'
  end


  def picture_params
    params.require(:picture).permit(:description)
  end
end
