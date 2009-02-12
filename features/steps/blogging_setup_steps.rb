Given /there is a blog called "(.*)"/ do |blog_name|
  Blog.create(:name => blog_name) unless Blog.first(:name => blog_name)
end

Given /there is a (draft)?\s*blog post titled "(.*)"$/ do |state, post_title|
  BlogPost.create(:title => post_title, :state => state) unless BlogPost.first(:title => post_title)
end