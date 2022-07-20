require 'pry'

# Write your code here.

katz_deli = []

def line(line_array)
  if line_array.size == 0
    puts "The line is currently empty."
  else
    new_array = line_array.map.with_index do |customer, index|
      "#{index + 1}. #{customer}"
    end
    puts "The line is currently: " + new_array.join(' ')
  end
end

def take_a_number(katz_deli, name_string)
  # binding.pry
  # add new person to end of array
  katz_deli << name_string
  puts "Welcome, #{name_string}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    serving = katz_deli.shift
    puts "Currently serving #{serving}."
  end
end

puts now_serving(["Ada", "Grace", "Matz"])