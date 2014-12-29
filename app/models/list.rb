class List < ActiveRecord::Base
  belongs_to :relationship
  #belongs_to :user, through: :relationships - TALK THIS THROUGH

end
