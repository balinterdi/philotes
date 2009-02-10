require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Recipient do
  
  before(:each) do
    @recipient = Recipient.new
  end

  it "should have a message" do
    @recipient.should have_at_least(1).errors_on(:message)
  end
  
  it "should have a user" do
    @recipient.should have_at_least(1).errors_on(:user)
  end

end