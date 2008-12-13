require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/forums" do
  before(:each) do
    @response = request("/forums")
  end
end