class PizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def index
        pizzas = Pizza.all
        render json: pizzas, include: ['restaurants']
    
    end

    def show
        pizza = Pizza.find(params[:id])
        render json: pizza, include: ['restaurants']
    end

    private

    def render_not_found_response
        render json: { error: "Author not found" }, status: :not_found
    end
end
