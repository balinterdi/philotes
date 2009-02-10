require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a blog_post exists" do
  request(resource(:blog_posts), :method => "POST", 
    :params => { :blog_post => { :id => nil }})
end

describe "resource(:blog_posts)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:blog_posts))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of blog_posts" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a blog_post exists" do
    before(:each) do
      @response = request(resource(:blog_posts))
    end
    
    it "has a list of blog_posts" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:blog_posts), :method => "POST", 
        :params => { :blog_post => { :id => nil }})
    end
    
    it "redirects to resource(:blog_posts)" do
    end
    
  end
end

describe "resource(@blog_post)" do 
  describe "a successful DELETE", :given => "a blog_post exists" do
     before(:each) do
       @response = request(resource(BlogPost.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:blog_posts))
     end

   end
end

describe "resource(:blog_posts, :new)" do
  before(:each) do
    @response = request(resource(:blog_posts, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@blog_post, :edit)", :given => "a blog_post exists" do
  before(:each) do
    @response = request(resource(BlogPost.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@blog_post)", :given => "a blog_post exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(BlogPost.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @blog_post = BlogPost.first
      @response = request(resource(@blog_post), :method => "PUT", 
        :params => { :blog_post => {:id => @blog_post.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@blog_post))
    end
  end
  
end

