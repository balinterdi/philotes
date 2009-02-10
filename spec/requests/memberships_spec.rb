require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a membership exists" do
  request(resource(:memberships), :method => "POST", 
    :params => { :membership => { :id => nil }})
end

describe "resource(:memberships)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:memberships))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of memberships" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a membership exists" do
    before(:each) do
      @response = request(resource(:memberships))
    end
    
    it "has a list of memberships" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:memberships), :method => "POST", 
        :params => { :membership => { :id => nil }})
    end
    
    it "redirects to resource(:memberships)" do
    end
    
  end
end

describe "resource(@membership)" do 
  describe "a successful DELETE", :given => "a membership exists" do
     before(:each) do
       @response = request(resource(Membership.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:memberships))
     end

   end
end

describe "resource(:memberships, :new)" do
  before(:each) do
    @response = request(resource(:memberships, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@membership, :edit)", :given => "a membership exists" do
  before(:each) do
    @response = request(resource(Membership.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@membership)", :given => "a membership exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(Membership.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @membership = Membership.first
      @response = request(resource(@membership), :method => "PUT", 
        :params => { :membership => {:id => @membership.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@membership))
    end
  end
  
end

