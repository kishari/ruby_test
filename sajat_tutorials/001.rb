#!/home/csaba/.rvm/rubies/ruby-1.9.2-p0/bin/ruby

def hello(name)
	result = "Hello, " + name
	puts result
	result = "Hello 2, #{name}"
	puts result
	result = 'Hello 3, ' + name
	puts result
	result = 'Hello 4, #{name}'
	puts result
end

def hello2(name)
	result = "Hello, " + name.capitalize
	puts result
	result = "Hello 2, #{name.capitalize}"
	puts result
	result = 'Hello 3, ' + name.capitalize
	puts result
	result = 'Hello 4, #{name.capitalize}'
	puts result
end

def hello3(name)
	result = "Hello, " + name.capitalize
	result = "Hello 2, #{name.capitalize}"
	'Hello 3, ' + name.capitalize
	i = 11
#	result = 'Hello 4, #{name.capitalize}'
	#return result
end

#hello("feri")
#hello2('gizi')
#puts "hello 3 returned with: "
#puts hello3('gizi')

#========================================
#========================================
a = ['elem1', 'elem2', 23, nil]
b = %w{elem1 elem2 23 nil}
#puts "a elements #{a.inspect}"
#puts "b elements #{b.inspect}"

#a.each {|x| puts x + x} # stringeket konkatenálja, 23-nál 46-ot ad vissza, mivel nem string. nil miatt ott elszáll
#b.each {|x| puts x + x} # mivel minden elem string, így konkatenál

c = a[2] + 1
#print "a[2] + 1 = "
#puts c

#========================================
#========================================
hashmap = {
	'cello' => 'string',
	'clarinet' => 'woodwind',
	'drum' => 'percussion',
	'oboe' => 'woodwind',
	'trumpet' => 'brass',
	'violin' => 'string'
}

#hashmap.each {|x| puts x}
#puts "----------------"
#puts hashmap['1']
#puts hashmap['cello']

#========================================
#========================================
histogram = Hash.new(1)
puts "default value: #{histogram[0]}"
histogram.each {|x| puts "ures hashen: #{x}"}
histogram[0] = 112
p histogram[0]
puts "#{histogram.inspect}"
histogram.each {|x| puts "nem ures hashen: #{x}"}
histogram.each {|key, value| puts "nem ures hashen: key: #{key} -- value: #{value}"}
histogram[0] = 'haha'
p histogram[0]

