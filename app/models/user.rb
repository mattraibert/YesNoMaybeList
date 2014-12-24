class User < ActiveRecord::Base
  has_secure_password

  #attr_acces :email, :password, :password_confirmation

  validates_uniqueness_of :email
  #validate email format

end
