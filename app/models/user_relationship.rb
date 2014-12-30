class UserRelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :relationship
  belongs_to :answers
end
