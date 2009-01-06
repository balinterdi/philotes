require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a blog exists" do
  request(resource(:blogs), :method => "POST", 
    :params => { :blog => { :id => nil }})
end

describe "resource(:blogs)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:blogs))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of blogs" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a blog exists" do
    before(:each) do
      @response = request(resource(:blogs))
    end
    
    it "has a list of blogs" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:blogs), :method => "POST", 
        :params => { :blog => { :id => nil }})
    end
    
    it "redirects to resource(:blogs)" do
    end
    
  end
end

describe "resource(@blog)" do 
  describe "a successful DELETE", :given => "a blog exists" do
     before(:each) do
       @response = request(resource(Blog.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:blogs))
     end

   end
end

describe "resource(:blogs, :new)" do
  before(:each) do
    @response = request(resource(:blogs, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@blog, :edit)", :given => "a blog exists" do
  before(:each) do
    @response = request(resource(Blog.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@blog)", :given => "a blog exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(Blog.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @blog = Blog.first
      @response = request(resource(@blog), :method => "PUT", 
        :params => { :blog => {:id => @blog.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@blog))
    end
  end
  
end

