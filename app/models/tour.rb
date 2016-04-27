class Tour < ActiveRecord::Base
      has_many :users

    def self.search(search)
        where("Type_of_tour ILIKE ?", "%#{search})%")
    end
end
