class Herb < ApplicationRecord
    include ActiveModel::Serializers::JSON

    # do i want dependent::destroy?
    has_many :qualities, dependent: :destroy
    has_many :properties, through: :qualities 
    # has_many :flavors, through: :qualities 
    # has_many :energetics, through: :qualities 

    def attributes()

    end
end
