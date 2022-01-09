# frozen_string_literal: true

require 'rubygems'
require 'watir'
require 'page-object'
require 'rspec/expectations'
require 'rspec'
require 'json'


Before do |scenario|

  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end

#Run after each scenario
@reportpath = "HTML_report"
After do |scenario|
  #Check, scenario is failed?
  if(scenario.failed?)
    sleep 0.5
    file = Tempfile.new(["screenshot_", ".png"],@reportpath)
    screenshot = file.path
    file.close(true)
    @browser.screenshot.save(screenshot)
    attach "#{screenshot}","image/png"

  end
end