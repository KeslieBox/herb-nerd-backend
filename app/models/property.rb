class Property < ApplicationRecord
    # do i want dependent::destroy?
    has_many :qualities, dependent: :destroy
    has_many :herbs, through: :qualities
end
