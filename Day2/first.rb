data = File.readlines('data.txt').to_a
depth_count = 0
position_count = 0

for element in data
  direction = element.split(" ")[0]
  value = element.split(" ")[1].to_i
  if direction == "forward"
    position_count += value
  else
    if direction == "up"
      depth_count -= value
    else
      depth_count += value
    end
  end
end
puts position_count * depth_count