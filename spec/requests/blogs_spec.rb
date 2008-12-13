require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/blogs" do
  before(:each) do
    @response = request("/blogs")
  end
end