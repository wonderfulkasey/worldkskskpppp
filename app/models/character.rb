class Character < ApplicationRecord
<<<<<<< HEAD
    #belongs_to :user
=======
    belongs_to :user
>>>>>>> 2b8a38a5d8ef376e94442a83052b4e766c296897

    validates :name, length: { minimum: 2 }
end
