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
  
  it "should identify if user is an admin" do
    @membership.should_not be_admin
    @membership.admin = true
    @membership.should be_admin
  end
  
  it "should not allow membership to be deleted if there are no other admins" do
    # TODO: Should raise an error
    @membership.destroy!
  end
  
  it "should not allow membership to remove admin if there are no other admins" do
    # TODO: Should raise an error
    @membership.admin = false
    @membership.save!
  end

end