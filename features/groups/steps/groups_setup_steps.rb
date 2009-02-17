Given /^there is an? "(.*)" (free\-join|invite\-only)?\s*group$/ do |name, invite_only_type|
  invite_only = invite_only_type == "invite-only"
  Group.create(:name => name, :invite_only => invite_only)
end

Given /^I have an invitation to join the "(.*)" group$/ do |name|
  group = Group.first(:name => name)
  Invitation.create(:to => group, :invitee => current_user)
end

Given /^I am member of the "(.*)" group$/ do |name|
  group = Group.first(:name => name)
  group.memberships << Membership.create(:of => group, :member => current_user)
end