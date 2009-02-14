When /^I go to the "(.*)" blog's edit page$/ do |name|
  blog = Blog.get(:name => name)
  visit resource(blog, :edit)
end