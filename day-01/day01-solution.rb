#!/usr/bin/env ruby
measurements = File.read("depth_measurements.txt").strip.split(' ').map(&:to_i)

previous_measurement = nil
counter = 0

measurements.each do |measurement|
  if previous_measurement && previous_measurement < measurement
    counter += 1
  end

  previous_measurement = measurement
end

puts "PART 1: There are #{counter} measurements larger than the previous one"

previous_sum = nil
counter = 0

measurements.each_cons(3) do |three_measurements|
  current_sum = three_measurements.sum

  if previous_sum && previous_sum < current_sum
    counter += 1
  end

  previous_sum = current_sum
end

puts "PART 2: There are #{counter} three-measurements sums larger than the previous one"


