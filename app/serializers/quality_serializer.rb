class QualitySerializer < ActiveModel::Serializer
  attributes :id, :herb_id, :property_id
  belongs_to :herbs
  belongs_to :properties
end
