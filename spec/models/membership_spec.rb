require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Membership do
  
  before(:each) do
    @membership = Membership.new
  end

  it "should have a user" do
    @membership.should have_at_least(1).errors_on(:user)
  end
  
  it "should have a group" do
    @membership.should have_at_least(1).errors_on(:group)
  end
  
  it "should have a status" do
    @membership.should have_at_least(1).errors_on(:status)
  end

end