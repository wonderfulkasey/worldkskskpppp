class World < ApplicationRecord
   # belongs_to :user

    def self.search(search)
        if search 
            world = World.find_by(name:search)
        if name
            self.where(name: name)
        else
            World.all
        end
        
        else
            World.all
        end
    end
 

    validates :name, presence: true, length: { minimum: 2 }
end
