Then /^the "(.*)" blog post should have the "(.*)" comment$/ do |post_title, comment_body|
  BlogPost.first(:title => post_title).comments.should include(Comment.first(:body => comment_body))
end

Then /^"(.*)"'s status should have the "(.*)" comment$/ do |login, comment_body|
  user = User.first(:login => login)
  user.status.comments.should include(Comment.first(:body => comment_body))
end