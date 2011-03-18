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
# chop: utolsó karaktert levágja. ha az \r\n, akkor mindkettőt.
# chomp: A végéről levágja a \r, \n vagy \r\n karaktereket.
String x = "x"
while (line = gets and !(line.chop.eql?(x)))
	
	puts x + " eql? " + line.chop + " : #{line.chop.eql?(x)}"
	puts "Ezt irtad be vazze: " + line.chop
end


y = "abc\n"
print y + "haha "
print "chop: " + y.chop

puts "URES SOR"

print "chop chop: " + y.chop.chop

puts "URES SOR"

print "chomp: " + y.chomp





