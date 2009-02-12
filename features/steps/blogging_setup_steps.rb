Given /there is a blog called "(.*)"/ do |blog_name|
  Blog.create(:name => blog_name) unless Blog.first(:name => blog_name)
end