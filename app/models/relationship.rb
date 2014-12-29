class Relationship < ActiveRecord::Base
  has_many :users
  has_many :lists

end
