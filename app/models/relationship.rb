class Relationship < ActiveRecord::Base
  belongs_to :user_relationship
  #belongs_to :user, through: :relationships - TALK THIS THROUGH

end
