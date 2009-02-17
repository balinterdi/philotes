When /^I go to the "my events" page$/ do
  #TODO: this will be something like resource(current_user, :events)
  visit '/member/events/'
end

When /^I go to the event's "show" page$/ do
  event = Event.first
  visit resource(event)
end