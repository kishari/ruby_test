#!/usr/bin/ruby

counter = 1
output = File.open("out.xml", "w")
File.open("gyart_tip_test.xml", "r") do |f|
	while (line = f.gets)
		if counter < 30 then
			puts "#{line}"
			output.write(line)
		end
	counter += 1
	end
end
output.close
