Given /there is a blog called "(.*)"/ do |blog_name|
  Blog.first_or_create(:name => blog_name)
end

Given /there is a (draft|published)?\s*blog post titled "(.*)"$/ do |state, post_title|
  BlogPost.first_or_create(:title => post_title, :state => state)
end
