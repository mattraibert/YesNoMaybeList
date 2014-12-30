class Answer < ActiveRecord::Base
  has_many :activities
  belongs_to :user_relationship
end
