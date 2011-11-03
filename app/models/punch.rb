class Punch < ActiveRecord::Base
  attr_accessible :status, :pull
  belongs_to :user
  validates :status, :presence => true
end
