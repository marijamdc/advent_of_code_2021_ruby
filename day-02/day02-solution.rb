### PART 1
#
position_instructions = File.open("navigation.txt")

horizontal_position = 0
depth = 0

position_instructions.each do |position_instruction|
  position = position_instruction.gsub(/[^\d]/, '').to_i

  if position_instruction.start_with?("forward")
    horizontal_position += position
  end

  if position_instruction.start_with?("up")
    depth -= position
  end

  if position_instruction.start_with?("down")
    depth += position
  end
end

final_result = horizontal_position * depth

puts "PART 1: #{final_result}"

### PART 2
aim = 0
horizontal_position = 0
depth = 0

position_instructions = File.open("navigation.txt")

position_instructions.each do |position_instruction|
  position = position_instruction.gsub(/[^\d]/, '').to_i

  if position_instruction.start_with?("forward")
    horizontal_position += position
    depth += aim * position
  end

  if position_instruction.start_with?("up")
    aim -= position
  end

  if position_instruction.start_with?("down")
    aim += position
  end
end

final_result = horizontal_position * depth

puts "PART 2: #{final_result}"
