class PropertiesController < ApplicationController
    # do i need to have this index action?
    def index
        render json: Property.all, key_transform: :camel_lower
    end

    def create
        property = Property.create(property_params)
        render json: property
    end

    private

    def property_params
        # do i need to permit id?
        params.require(:property).permit(:name)
    end
end