When /^I go to the blog's edit page$/ do
  visit resource(Blog.first, :edit)
end

When /^I go to the "my blogs" page$/ do
  visit resource(current_user, :blogs)
end

When /^I go to the blog's new blog post page$/ do
  visit resource(Blog.first, :blog_posts, :new)
end

When /^I go to the "(.*)" blog post's edit page$/ do |title|
  blog_post = BlogPost.get(:title => title)
  visit resource(blog_post, :edit)
end

When /^I go to the "show" page of the "(.*)" blog post$/ do |title|
  blog_post = BlogPost.get(:title => title)
  visit resource(blog_post)
end