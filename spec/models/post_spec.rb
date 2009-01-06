require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Post do
  
  before(:each) do
    @post = Post.new
  end
  
  it "should have a user" do
    @post.should have_at_least(1).errors_on(:user)
  end
  
  it "should have a forum" do
    @post.should have_at_least(1).errors_on(:forum)
  end
  
  it "should have a body" do
    @post.should have_at_least(1).errors_on(:body)
  end

end