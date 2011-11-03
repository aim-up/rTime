class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :name
  validates :password, :presence     => { :on => :create },
                       :confirmation => { :on => :create }
end
