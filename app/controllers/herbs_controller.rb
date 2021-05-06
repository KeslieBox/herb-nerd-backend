class HerbsController < ApplicationController
    
    
    def index
        render json: Herb.all, key_transform: :camel_lower
    end

    def show
        herb = Herb.find_by(id: params[:id])
        render json: herb, key_transform: :camel_lower
    end

    def create
        # need error handling
        herb = Herb.create(herb_params)
        render json: herb, key_transform: :camel_lower
    end

    def update
        # need error handling
        herb = Herb.find_by(id: params[:id])
        herb.update(herb_params)
        render json: herb, key_transform: :camel_lower
    end

    private

    def herb_params
        params.require(:herb).permit(:common_name, :latin_name, :history, :spiritual_uses, :medicinal_uses,  property_ids: [])
    end
end
