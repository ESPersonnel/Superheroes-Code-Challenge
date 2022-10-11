class HeroesController < ApplicationController
    before_action :set_hero, only: %i[ show update destroy ]

    # GET /heroes
    def index
    @heroes = Hero.all
    render json: @heroes
    end

    # GET /heroes/1
    def show
        render json: @hero, serializer: HeroPowerSerializer
    end

    # POST /heroes
    def create
    @hero = Hero.new(hero_params)

    if @hero.save
        render json: @hero, status: :created, location: @hero
    else
        render json: @hero.errors, status: :unprocessable_entity
    end
    end

    # PATCH/PUT /heros/1
    def update
    if @hero.update(hero_params)
        render json: @hero
    else
        render json: @hero.errors, status: :unprocessable_entity
    end
    end

    # DELETE /heros/1
    def destroy
        @hero.destroy
        head :no_content
    end

    private
    def set_hero
        @hero = Hero.find(params[:id])
    end

    def hero_params
        params.require(:hero).permit(:name, :super_name)
    end
end
