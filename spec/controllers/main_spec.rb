require File.dirname(__FILE__) + '/../spec_helper'

describe "Philotes::Main (controller)" do
  
  # Feel free to remove the specs below
  
  before :all do
    Merb::Router.prepare { add_slice(:Philotes) } if standalone?
  end
  
  after :all do
    Merb::Router.reset! if standalone?
  end
  
  it "should have access to the slice module" do
    controller = dispatch_to(Philotes::Main, :index)
    controller.slice.should == Philotes
    controller.slice.should == Philotes::Main.slice
  end
  
  it "should have an index action" do
    controller = dispatch_to(Philotes::Main, :index)
    controller.status.should == 200
    controller.body.should contain('Philotes')
  end
  
  it "should work with the default route" do
    controller = get("/philotes/main/index")
    controller.should be_kind_of(Philotes::Main)
    controller.action_name.should == 'index'
  end
  
  it "should work with the example named route" do
    controller = get("/philotes/index.html")
    controller.should be_kind_of(Philotes::Main)
    controller.action_name.should == 'index'
  end
    
  it "should have a slice_url helper method for slice-specific routes" do
    controller = dispatch_to(Philotes::Main, 'index')
    
    url = controller.url(:philotes_default, :controller => 'main', :action => 'show', :format => 'html')
    url.should == "/philotes/main/show.html"
    controller.slice_url(:controller => 'main', :action => 'show', :format => 'html').should == url
    
    url = controller.url(:philotes_index, :format => 'html')
    url.should == "/philotes/index.html"
    controller.slice_url(:index, :format => 'html').should == url
    
    url = controller.url(:philotes_home)
    url.should == "/philotes/"
    controller.slice_url(:home).should == url
  end
  
  it "should have helper methods for dealing with public paths" do
    controller = dispatch_to(Philotes::Main, :index)
    controller.public_path_for(:image).should == "/slices/philotes/images"
    controller.public_path_for(:javascript).should == "/slices/philotes/javascripts"
    controller.public_path_for(:stylesheet).should == "/slices/philotes/stylesheets"
    
    controller.image_path.should == "/slices/philotes/images"
    controller.javascript_path.should == "/slices/philotes/javascripts"
    controller.stylesheet_path.should == "/slices/philotes/stylesheets"
  end
  
  it "should have a slice-specific _template_root" do
    Philotes::Main._template_root.should == Philotes.dir_for(:view)
    Philotes::Main._template_root.should == Philotes::Application._template_root
  end

end