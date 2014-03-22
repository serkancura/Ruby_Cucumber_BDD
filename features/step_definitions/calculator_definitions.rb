# encoding: utf-8
require 'cucumber/formatter/unicode'
$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'calculator'

Before do
  # Calculator sınıfını initalize et
  @calc = Calculator.new
end

After do
end

=begin
Senaryomuz burada başlıyor
=end

# Belirtilmiş - Senaryoda rakam girilecek alan

Given /I have entered (\d+) into the calculator/ do |n|
  @calc.push n.to_i
end

# Eğer - Senaryoda topla tuşuna basılacak alan

When /I press (\w+)/ do |op|
  @result = @calc.send op
end

# O zaman - Senaryoda sonucun görüneceği alan

Then /the result should be (.*) on the screen/ do |result|
  @result.should == result.to_f
end
