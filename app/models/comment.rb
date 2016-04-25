class Comment < ActiveRecord::Base
    attr_accessor :comment, :user_id
    belongs_to :user
end
