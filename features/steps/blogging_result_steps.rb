Then /^the new blog should be private/ do
  Blog.all(:order => [:created_at]).reverse.first.should be_private
end

Then /^the blog (.*) should be private/ do |id|
  Blog.get(id).should be_private
end

Then /^the blog (.*) should be public/ do |id|
  Blog.get(id).should be_published
end

Then /^the blog post (.*) should be draft/ do |id|
  BlogPost.get(id).should be_draft
end

Then /^the blog post (.*) should be published/ do |id|
  BlogPost.get(id).should be_published
end