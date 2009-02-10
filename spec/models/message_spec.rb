require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Message do
  
  before(:each) do
    @message = Message.new
  end

  it "should have a subject" do
    @message.should have_at_least(1).errors_on(:subject)
  end
  
  it "should have a posted at datetime" do
    @message.should have_at_least(1).errors_on(:posted_at)
  end
  
  it "should have a body" do
    @message.should have_at_least(1).errors_on(:body)
  end
  
  it "should have a sender" do
    @message.should have_at_least(1).errors_on(:sender)
  end

end