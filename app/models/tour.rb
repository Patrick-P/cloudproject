class Tour < ActiveRecord::Base
    has_many :orders
end

class Tour < ActiveRecord::Base
    def self.search(search)
        where("type_ofTour LIKE ?" "%#{search})%")
    end
end
