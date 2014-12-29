class Relationship < ActiveRecord::Base
  has_many :users
  belongs_to :lists

end
