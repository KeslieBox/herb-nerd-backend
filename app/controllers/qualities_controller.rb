class QualitiesController < ApplicationController

    def create
        quality = Quality.create(quality_params)
        render json: quality
    end

    private

    def quality_params
        params.require(:quality).permit(:herb_id, :property_id)
    end
end