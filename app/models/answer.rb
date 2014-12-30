class Answer < ActiveRecord::Base
  has_many :activities
  belongs_to :user_relationship
  has_one :relationship, through: :user_relationship
  has_one :user, through: :user_relationship
end
