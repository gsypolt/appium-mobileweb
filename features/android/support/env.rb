require 'rspec/expectations'
require 'appium_lib'

CAPS = {
    'browserName' => 'Chrome',
    'platformName' => 'Android',
    'deviceName' => 'Samsung',
    'platformVersion' => '4.4',
}

def server_url
  "http://127.0.0.1:4723/wd/hub"
end

def driver
  @driver ||= Appium::Driver.new(caps: CAPS)
  @driver.driver
end

def appium_driver
  driver #in case if still not initialized
  @driver
end

$mobileweb_url = 'http://mhigh.usatoday.com'

def base_url(path)
  $mobileweb_url + path
end


Before do
  appium_driver.start_driver
end

After do
  appium_driver.driver_quit
end
