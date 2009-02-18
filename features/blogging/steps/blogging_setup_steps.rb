Given /^there is a blog$/ do
  Blog.create
end

Given /there is a (draft|published)?\s*blog post titled "(.*)"$/ do |state, post_title|
  BlogPost.first_or_create(:title => post_title, :state => state)
end
