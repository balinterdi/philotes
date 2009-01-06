require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a gallery exists" do
  request(resource(:galleries), :method => "POST", 
    :params => { :gallery => { :id => nil }})
end

describe "resource(:galleries)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:galleries))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of galleries" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a gallery exists" do
    before(:each) do
      @response = request(resource(:galleries))
    end
    
    it "has a list of galleries" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:galleries), :method => "POST", 
        :params => { :gallery => { :id => nil }})
    end
    
    it "redirects to resource(:galleries)" do
    end
    
  end
end

describe "resource(@gallery)" do 
  describe "a successful DELETE", :given => "a gallery exists" do
     before(:each) do
       @response = request(resource(Gallery.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:galleries))
     end

   end
end

describe "resource(:galleries, :new)" do
  before(:each) do
    @response = request(resource(:galleries, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@gallery, :edit)", :given => "a gallery exists" do
  before(:each) do
    @response = request(resource(Gallery.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@gallery)", :given => "a gallery exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(Gallery.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @gallery = Gallery.first
      @response = request(resource(@gallery), :method => "PUT", 
        :params => { :gallery => {:id => @gallery.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@gallery))
    end
  end
  
end

