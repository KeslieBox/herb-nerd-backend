class QualitiesController < ApplicationController

    def create

    end

    private

    def quality_params
        params.require(:quality).permit(:herb_id, :property_id)
    end
end