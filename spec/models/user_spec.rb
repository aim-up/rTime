require 'spec_helper'

describe User do
  
  before(:each) do
    @attr = { :name                  => "Joseph Khamel",
              :email                 => "joe.khamel@reprographix.com",
              :password              => 'pa55w0rD',
              :password_confirmation => 'pa55w0rD' }
  end
  
  describe "password encryption" do

    it "should authenticate with matching username and password" do
      user = User.create! @attr
      User.find_by_email('joe.khamel@reprographix.com').try(:authenticate, 'pa55w0rD').should == user
    end
  end
  
  describe "Validation" do
    
    it "should reject all email domains but @reprographix.com" do
      outside_user = User.new(@attr.merge(:email => 'joe.khamel@notrepro.com'))
      outside_user.should_not be_valid
    end
    
    it "should allow emails from @reprographix.com" do
      inside_user  = User.new @attr
      inside_user.should be_valid
    end
  end
end
