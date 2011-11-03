require 'spec_helper'

describe User do

  describe "password encryption" do

    it "should authenticate with matching username and password" do
      user = Factory(:user, :email => 'frank@gmail.com', :password => 'secret', :password_confirmation => 'secret')
      User.find_by_email('frank@gmail.com').try(:authenticate, 'secret').should == user
    end
  end
end
