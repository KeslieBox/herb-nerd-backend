class PropertiesController < ApplicationController
    def index
        render json: Property.all, key_transform: :camel_lower
    end
end