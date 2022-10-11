class PowersController < ApplicationController
    before_action :set_power, only: %i[ show update destroy ]

    # GET /powers
    def index
    @powers = Power.all
    render json: @powers
    end

    # GET /powers/1
    def show
    render json: @power
    end

    # POST /powers
    def create
    @power = Power.new(power_params)

    if @power.save
        render json: @power, status: :created, location: @power
    else
        render json: @power.errors, status: :unprocessable_entity
    end
    end

    # PATCH/PUT /powers/1
    def update
    if @power.update(power_params)
        render json: @power
    else
        render json: @power.errors, status: :unprocessable_entity
    end
    end

    # DELETE /powers/1
    def destroy
    @power.destroy
    end

    private
    def set_power
        @power = Power.find(params[:id])
    end

    def power_params
        params.require(:power).permit(:name, :description)
    end
end
