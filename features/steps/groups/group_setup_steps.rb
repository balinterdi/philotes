Given /^there is an? "(.*)" (free\-join|invite\-only)?\s*group$/ do |name, invite_only_type|
  invite_only = invite_only_type == "invite-only"
  Group.create(:name => name, :invite_only => invite_only)
end

Given /^I have an invitation to join the "(.*)" group$/ do |group_name|
  group = Group.first(:name => group_name)
  GroupInvitation.create(:group => group, :invitee => current_user)
end