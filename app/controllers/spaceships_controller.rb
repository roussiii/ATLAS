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
    @spaceship.banner_url = "hello"
    @spaceship.save
    redirect_to spaceship_path(@spaceship)
  end

  def update
    @spaceship = Spaceship.find(params[:id])
    @spaceship.update(spaceship_params)
    redirect_to spaceship_path(@spaceship)
  end

  def destroy
    @spaceship = Spaceship.find(params[:id])
    @spaceship.destroy
    redirect_to spaceships_path, status: :see_other
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :payload, :pax, :availability, :image_url)
  end
end
