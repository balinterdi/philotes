require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/profiles" do
  before(:each) do
    @response = request("/profiles")
  end
end