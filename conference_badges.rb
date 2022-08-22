require 'pry'
# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

puts badge_maker("Paul")

def batch_badge_creator(name)

  name.map do |speaker|
    badge_maker(speaker)

  end
end

puts batch_badge_creator(["Harry", "John", "Paul"])

def assign_rooms(speaker)
  num = 0
  speaker.map do |person|
    num += 1
    "Hello, #{person}! You'll be assigned to room #{num}!"
  end
end

puts assign_rooms(["Harry", "John", "Paul", "Andrew"])

def printer(speakers)

  printer_array = [batch_badge_creator(speakers),
  assign_rooms(speakers)]

  printer_array.each do |m|
     m.each {|n| puts n}
  end
end

puts printer(["Harry", "John", "Paul"])

