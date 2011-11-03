class Punch < ActiveRecord::Base
  attr_accessible :status, :pull, :comment
  belongs_to :user
  validates :status, :presence => true
end
