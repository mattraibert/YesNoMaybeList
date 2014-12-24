class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :Password_confirmation

  validates_uniqueness_of :email
  #validate email format

end
