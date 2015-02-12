When(/^Go directly to "(.*?)" front$/) do |section_href|
  driver.get base_url(section_href)
end

Then(/^I should see "(.*?)" front$/) do |header_front_class|
  driver.find_element(:css, header_front_class)
end






