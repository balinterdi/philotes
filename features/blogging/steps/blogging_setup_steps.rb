Given /^there is a blog$/ do
  Blog.create
end

Given /^the blog post's title is "(.*)"$/ do |title|
  blog_post = BlogPost.create(:title => title)
end

Given /there is a (draft|published)?\s*blog post$/ do |state|
  blog_post = BlogPost.first_or_create
  blog_post.state = state if state
end

