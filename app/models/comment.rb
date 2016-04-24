class Comment < ActiveRecord::Base
    attr_accessor :coment, :user_id
    belongs_to :user
end
