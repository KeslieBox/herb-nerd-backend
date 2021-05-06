class Herb < ApplicationRecord
    include ActiveModel::Serializers::JSON

    # do i want dependent::destroy?
    has_many :qualities, dependent: :destroy
    has_many :properties, through: :qualities
    validates_presence_of :common_name, :latin_name 
    # has_many :flavors, through: :qualities 
    # has_many :energetics, through: :qualities 

   
end
