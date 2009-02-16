When /^I go to the "(.*)" blog's edit page$/ do |name|
  blog = Blog.get(:name => name)
  visit resource(blog, :edit)
end

When /^I go to the "(.*)" blog post's edit page$/ do |title|
  blog_post = BlogPost.get(:title => title)
  visit resource(blog, :edit)
end