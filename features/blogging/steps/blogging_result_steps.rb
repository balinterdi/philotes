Then /^a blog should be created$/ do
  Blog.first.should_not be_nil
end

Then /^a blog should not be created/ do
  Blog.first.should be_nil
end

Then /^the blog should be private/ do
  Blog.first.should be_private
end

Then /^the blog should be public/ do
  Blog.first.should be_published
end

Then /^the blog post should be created$/ do
  BlogPost.first.should_not be_nil
end

Then /^the blog post should not be created$/ do
  BlogPost.first.should be_nil
end

Then /^the blog post should be draft$/ do
  BlogPost.first.should be_draft
end

Then /^the blog post should be published/ do
  BlogPost.first.should be_published
end
