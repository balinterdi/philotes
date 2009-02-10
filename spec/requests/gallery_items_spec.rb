require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a gallery_item exists" do
  request(resource(:gallery_items), :method => "POST", 
    :params => { :gallery_item => { :id => nil }})
end

describe "resource(:gallery_items)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:gallery_items))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of gallery_items" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a gallery_item exists" do
    before(:each) do
      @response = request(resource(:gallery_items))
    end
    
    it "has a list of gallery_items" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:gallery_items), :method => "POST", 
        :params => { :gallery_item => { :id => nil }})
    end
    
    it "redirects to resource(:gallery_items)" do
    end
    
  end
end

describe "resource(@gallery_item)" do 
  describe "a successful DELETE", :given => "a gallery_item exists" do
     before(:each) do
       @response = request(resource(GalleryItem.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:gallery_items))
     end

   end
end

describe "resource(:gallery_items, :new)" do
  before(:each) do
    @response = request(resource(:gallery_items, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@gallery_item, :edit)", :given => "a gallery_item exists" do
  before(:each) do
    @response = request(resource(GalleryItem.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@gallery_item)", :given => "a gallery_item exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(GalleryItem.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @gallery_item = GalleryItem.first
      @response = request(resource(@gallery_item), :method => "PUT", 
        :params => { :gallery_item => {:id => @gallery_item.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@gallery_item))
    end
  end
  
end

