class Tour < ActiveRecord::Base
     # has_many :orders

    def self.search(search)
        where("type_ofTour LIKE ?" "%#{search})%")
    end
end
