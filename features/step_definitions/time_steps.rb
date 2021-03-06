Given(/^it is currently (.+)$/) do |time|
  travel_to time
end

Given(/^time is frozen at (.+)$/) do |time|
  freeze_time_at time
end

Given(/^(?:I|we) return to the present$/) do
  Timecop.return
end

After do
  Timecop.return
end

Given(/^the application is set to "([^"]*)"$/) do |locale|
  I18n.locale = locale.to_sym
end