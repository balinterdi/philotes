require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a status exists" do
  request(resource(:statuses), :method => "POST", 
    :params => { :status => { :id => nil }})
end

describe "resource(:statuses)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:statuses))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of statuses" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a status exists" do
    before(:each) do
      @response = request(resource(:statuses))
    end
    
    it "has a list of statuses" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:statuses), :method => "POST", 
        :params => { :status => { :id => nil }})
    end
    
    it "redirects to resource(:statuses)" do
    end
    
  end
end

describe "resource(@status)" do 
  describe "a successful DELETE", :given => "a status exists" do
     before(:each) do
       @response = request(resource(Status.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:statuses))
     end

   end
end

describe "resource(:statuses, :new)" do
  before(:each) do
    @response = request(resource(:statuses, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@status, :edit)", :given => "a status exists" do
  before(:each) do
    @response = request(resource(Status.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@status)", :given => "a status exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(Status.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @status = Status.first
      @response = request(resource(@status), :method => "PUT", 
        :params => { :status => {:id => @status.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@status))
    end
  end
  
end

