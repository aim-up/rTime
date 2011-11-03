class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation,
                  :name,  :status
  validates :password,    :presence     => { :on => :create },
                          :confirmation => { :on => :create }
  has_many  :punches,     :dependent => :destroy
  STATUSES = ['In', 'Out', 'Break 1', 'Break 2', 'Lunch']
end
