require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Group do
  
  before(:each) do
    @group = Group.new
  end

  it "should have a description" do
    @group.should have_at_least(1).errors_on(:description)
  end
  
  it "should have a name" do
    @group.should have_at_least(1).errors_on(:name)
  end
  
  it "can be by invitation only" do
    @group.should be_invite_only
    @group.invite_only = false
    @group.should_not be_invite_only
  end
  
  it "should have an admin" do
    @group.admins.should == @admins
    pending
  end
  
  it "should be joinable" do
    @group.join!(@user)
  end
  
  it "should be leavable" do
    @group.leave!(@user)
  end
    
  it "should determine if a user is a member" do
    @group.should_not has_member?(@user)
    @group.join!(@user)
    @group.should has_member?(@user)
  end
  
  it "should be invitable" do
    @group.invite!(@user)
    @group.invite!(@users)
  end
  
  it "should notify users of invitation" do
    # TODO: Check that notification happens
    @group.invite!(@users)
  end
    
end