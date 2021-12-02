data = File.readlines('data.txt').to_a
depth_count = 0
position_count = 0
aim_count = 0

for element in data
  direction = element.split(" ")[0]
  value = element.split(" ")[1].to_i
  if direction == "forward"
    position_count += value
    depth_count += (value * aim_count)
  else
    if direction == "up"
      aim_count -= value
    else
      aim_count += value
    end
  end
end
puts position_count * depth_count