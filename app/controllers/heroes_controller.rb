class HeroesController < ApplicationController
  def index
    heroes = Hero.all
    render json: heroes, only: [:id, :name, :super_name]
  end

  def show
    hero = Hero.find_by(id: params[:id])
    if hero
      render json: hero, include: { powers: { only: [:id, :name, :description] } }
    else
      render json: { error: 'Hero not found' }, status: :not_found
    end
  end

  def create
    hero = Hero.new(hero_params)
    if hero.save
      render json: hero
    else
      render json: { errors: hero.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # Helper method for rendering a not-found response
  def render_not_found(message)
    render json: { error: message }, status: :not_found
  end
end
