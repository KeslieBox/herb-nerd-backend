class HerbsController < ApplicationController
    
    
    def index
        render json: Herb.all, key_transform: :camel_lower
    end

    def show
        herb = Herb.find_by(id: params[:id])
        render json: herb
    end
end
