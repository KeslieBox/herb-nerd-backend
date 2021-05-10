class Property < ApplicationRecord
    # do i want dependent::destroy?
    has_many :qualities, dependent: :destroy
    has_many :herbs, through: :qualities
    validates_uniqueness_of :name
    validates_presence_of :name
    validates :name, length: { minimum: 4 }
end
