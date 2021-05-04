class HerbSerializer < ActiveModel::Serializer
  attributes :id, :common_name, :latin_name, :history, :medicinal_uses, :spiritual_uses
  # has_many :qualities
  # has_many :properties, through: :qualities
end
