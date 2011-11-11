class User < ActiveRecord::Base
  has_secure_password
  attr_accessor :comment
  
  email_regex = /\A[\w+\-.]+@reprographix\.com+\z/i
  
  attr_accessible :email, :password, :password_confirmation,
                  :name,  :status
  validates :password,    :presence     => { :on => :create },
                          :confirmation => { :on => :create }
  validates :email,       :format       => { :with => email_regex }
  has_many  :punches,     :dependent => :destroy
  STATUSES = ['In', 'Out', 'Break 1', 'Break 2', 'Lunch', 'Holiday']
end
