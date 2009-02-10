require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

given "a invitation exists" do
  request(resource(:invitations), :method => "POST", 
    :params => { :invitation => { :id => nil }})
end

describe "resource(:invitations)" do
  describe "GET" do
    
    before(:each) do
      @response = request(resource(:invitations))
    end
    
    it "responds successfully" do
      @response.should be_successful
    end

    it "contains a list of invitations" do
      pending
      @response.should have_xpath("//ul")
    end
    
  end
  
  describe "GET", :given => "a invitation exists" do
    before(:each) do
      @response = request(resource(:invitations))
    end
    
    it "has a list of invitations" do
      pending
      @response.should have_xpath("//ul/li")
    end
  end
  
  describe "a successful POST" do
    before(:each) do
      @response = request(resource(:invitations), :method => "POST", 
        :params => { :invitation => { :id => nil }})
    end
    
    it "redirects to resource(:invitations)" do
    end
    
  end
end

describe "resource(@invitation)" do 
  describe "a successful DELETE", :given => "a invitation exists" do
     before(:each) do
       @response = request(resource(Invitation.first), :method => "DELETE")
     end

     it "should redirect to the index action" do
       @response.should redirect_to(resource(:invitations))
     end

   end
end

describe "resource(:invitations, :new)" do
  before(:each) do
    @response = request(resource(:invitations, :new))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@invitation, :edit)", :given => "a invitation exists" do
  before(:each) do
    @response = request(resource(Invitation.first, :edit))
  end
  
  it "responds successfully" do
    @response.should be_successful
  end
end

describe "resource(@invitation)", :given => "a invitation exists" do
  
  describe "GET" do
    before(:each) do
      @response = request(resource(Invitation.first))
    end
  
    it "responds successfully" do
      @response.should be_successful
    end
  end
  
  describe "PUT" do
    before(:each) do
      @invitation = Invitation.first
      @response = request(resource(@invitation), :method => "PUT", 
        :params => { :invitation => {:id => @invitation.id} })
    end
  
    it "redirect to the article show action" do
      @response.should redirect_to(resource(@invitation))
    end
  end
  
end

