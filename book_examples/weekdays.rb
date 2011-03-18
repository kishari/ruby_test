#!/home/csaba/.rvm/rubies/ruby-1.9.2-p0/bin/ruby
today = Time.now

if today.saturday?
  puts "Do chores around the house"
elsif today.sunday?
  puts "Relax"
else
  puts "Go to work"
end
