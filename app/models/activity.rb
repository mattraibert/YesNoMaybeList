class Activity < ActiveRecord::Base
  belongs_to :answer
  validates :name, presence: true, uniqueness: true
end
