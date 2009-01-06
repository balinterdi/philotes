require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a event exists" do
  request(resource(:events), :method => "POST", 
    :params => { :event => { :id => nil }})
end

describe "resource(:events)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:events))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of events" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a event exists" do
    before(:each) do
      @response = request(resource(:events))
    end
    
    it "has a list of events" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:events), :method => "POST", 
        :params => { :event => { :id => nil }})
    end
    
    it "redirects to resource(:events)" do
    end
    
  end
end

describe "resource(@event)" do 
  describe "a successful DELETE", :given => "a event exists" do
     before(:each) do
       @response = request(resource(Event.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:events))
     end

   end
end

describe "resource(:events, :new)" do
  before(:each) do
    @response = request(resource(:events, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@event, :edit)", :given => "a event exists" do
  before(:each) do
    @response = request(resource(Event.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@event)", :given => "a event exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(Event.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @event = Event.first
      @response = request(resource(@event), :method => "PUT", 
        :params => { :event => {:id => @event.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@event))
    end
  end
  
end

