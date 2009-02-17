require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Invitation do
  
  before(:each) do
    @invitation = Invitation.new
  end

  #TODO: it should rather belong to the user (invitee)
  # than an actual email address, should not it?
  it "should have an email address" do
    @invitation.should have_at_least(1).errors_on(:email)
  end
  
  it "should send email on invitation" do
    # TODO: Check that email invitation is actually sent to :email user
    @invitation.invite!
  end
  
  it "should have an email body" do
    @invitation.should have_at_least(1).errors_on(:body)
  end
  
  #TODO: would not it be better to have a (polymorphic) :to association which
  # would designate the object the invitation is to? (e.g event, group)
  it "should have an invitation type" do
    @invitation.should have_at_least(1).errors_on(:invitation_type)
  end
  
  it "should be acceptable" do
    @invitation.should_not be_accepted
    @invitation.accept!
    @invitation.should be_accepted
  end

end