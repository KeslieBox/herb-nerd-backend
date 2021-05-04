class HerbSerializer < ActiveModel::Serializer
  attributes :id, :common_name, :latin_name, :history, :spiritual_uses, :medicinal_uses
  has_many :qualities
  has_many :properties, through: :qualities
end
