class Herb < ApplicationRecord
    include ActiveModel::Serializers::JSON

    has_many :qualities, dependent: :destroy
    has_many :properties, through: :qualities
    validates_presence_of :common_name, :latin_name 
    validates_uniqueness_of :common_name
    validates :common_name, length: { minimum: 4 }
    validates :latin_name, length: { minimum: 4 }
    # has_many :flavors, through: :qualities 
    # has_many :energetics, through: :qualities 
    
    def properties_attributes=(properties_attributes)             
            properties_attributes.values.each do |p|
                if p[:name]
                    property = Property.find_or_create_by(name: p[:name])
                    self.properties << property
                end
            end
        
            # self.property = Property.find_by(name: properties_attributes[:name]) 
            # if self.property
            #     self.property.update(properties_attributes)
            # else
            #     self.property = Property.create(properties_attributes)
            # end
        # end
    end

end
