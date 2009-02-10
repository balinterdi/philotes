require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Status do
  
  before(:each) do
    @status = Status.new
  end

  it "should have a user" do
    @status.should have_at_least(1).errors_on(:user)
  end
  
  it "should have text" do
    @status.should have_at_least(1).errors_on(:text)
  end
  
  it "should have a posted at datetime" do
    @status.should have_at_least(1).errors_on(:posted_at)
  end

end