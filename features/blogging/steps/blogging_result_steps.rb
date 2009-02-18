Then /^a blog should be created$/ do
  Blog.first.should_not be_nil
end

Then /^a blog should not be created/ do |blog_name|
  Blog.first.should be_nil
end

Then /^the new blog should be private/ do
  Blog.all(:order => [:created_at]).reverse.first.should be_private
end

Then /^the blog should be private/ do
  Blog.first.should be_private
end

Then /^the blog should be public/ do
  Blog.first.should be_published
end

Then /^the "(.*)" blog post should be draft/ do |post_title|
  BlogPost.first(:title => post_title).should be_draft
end

Then /^the "(.*)" blog post should be published/ do |post_title|
  BlogPost.first(:title => post_title).should be_published
end
