class Character < ApplicationRecord
    belongs_to :user
    belongs_to :player

    validates :name, length: { minimum: 2 }
end
