require File.join(File.dirname(__FILE__), '..', 'spec_helper.rb')

describe "/messages" do
  before(:each) do
    @response = request("/messages")
  end
end