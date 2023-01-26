class SpaceshipsController < ApplicationController
  def index
    @spaceships = Spaceship.all
  end

  def show
    @spaceship = Spaceship.find(params[:id])
  end

  def new
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user_id = current_user.id
    @spaceship.banner_url = "Banner Image Missing"
    @spaceship.image_url = "Image URL Missing"
    @spaceship.save
    redirect_to spaceships_path(@spaceship)
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :payload, :pax, :availability)
  end
end
