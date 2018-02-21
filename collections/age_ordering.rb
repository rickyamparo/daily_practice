require 'pry'
data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]
data_hash = {}
data = data.sort_by {|person| person[1]}
data.each do |person|
  # uncomment this line to print individual names and ages
  # puts "#{person[0]} (#{person[1]})"
  if data_hash[person[1]].nil?
    data_hash[person[1]] = [person[0]]
  else
    data_hash[person[1]] << person[0]
  end
end

puts data_hash
