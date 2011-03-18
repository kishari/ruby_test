#!/home/csaba/.rvm/rubies/ruby-1.9.2-p0/bin/ruby

today = Time.now
if today.saturday?
	puts "Do chores around the house"
elsif today.sunday?
	puts "Relax"
else
	puts "Go to work"
end

#==============================
#==============================
String x = "x"
while (line = gets and !(line.chop.eql?(x)))
	
	puts x + " eql? " + line.chop + " : #{line.chop.eql?(x)}"
	puts "Ezt irtad be vazze: " + line.chop
end

y = "abc\n"
print y + "haha"
y = y.chop
print y




