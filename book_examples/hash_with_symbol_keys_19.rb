#!/home/csaba/.rvm/rubies/ruby-1.9.2-p0/bin/ruby

inst_section = {
  cello:    'string',
  clarinet: 'woodwind',
  drum:     'percussion',
  oboe:     'woodwind',
  trumpet:  'brass',
  violin:   'string'
}
puts "An oboe is a #{inst_section[:oboe]} instrument"
