class Character < ApplicationRecord
    belongs_to :user

    validates :name, length: { minimum: 2 }
end
