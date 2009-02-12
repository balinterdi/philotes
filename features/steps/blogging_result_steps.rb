Then /^the new blog should be private/ do
  Blog.all(:order => [:created_at]).reverse.first.should be_private
end

Then /^the blog called "(.*)" should be private/ do |blog_name|
  Blog.first(:name => blog_name).should be_private
end

Then /^the blog called "(.*)" should be public/ do |blog_name|
  Blog.first(:name => blog_name).should be_published
end

Then /^the blog post titled "(.*)" should be draft/ do |post_title|
  BlogPost.first(:title => post_title).should be_draft
end

Then /^the blog post titled "(.*)" should be published/ do |post_title|
  BlogPost.first(:title => post_title).should be_published
end
