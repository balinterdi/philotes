require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a connection exists" do
  request(resource(:connections), :method => "POST", 
    :params => { :connection => { :id => nil }})
end

describe "resource(:connections)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:connections))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of connections" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a connection exists" do
    before(:each) do
      @response = request(resource(:connections))
    end
    
    it "has a list of connections" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:connections), :method => "POST", 
        :params => { :connection => { :id => nil }})
    end
    
    it "redirects to resource(:connections)" do
    end
    
  end
end

describe "resource(@connection)" do 
  describe "a successful DELETE", :given => "a connection exists" do
     before(:each) do
       @response = request(resource(Connection.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:connections))
     end

   end
end

describe "resource(:connections, :new)" do
  before(:each) do
    @response = request(resource(:connections, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@connection, :edit)", :given => "a connection exists" do
  before(:each) do
    @response = request(resource(Connection.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@connection)", :given => "a connection exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(Connection.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @connection = Connection.first
      @response = request(resource(@connection), :method => "PUT", 
        :params => { :connection => {:id => @connection.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@connection))
    end
  end
  
end

