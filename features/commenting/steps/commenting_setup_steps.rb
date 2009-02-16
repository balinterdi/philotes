Given /^"(.*)"'s status is "(.*)"$/ do |login, status|
  user = User.first(:login => login)
  user.status.update_attributes(:text => status, :posted_at => Time.now)
end

Given /^there is a comment that says "(.*)" on the "(.*)" blog post$/ do |body, post_title|
  blog_post = BlogPost.first(:title => post_title)
  blog_post.comments << Comment.create(:body => body)
end