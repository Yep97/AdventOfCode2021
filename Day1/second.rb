data = File.readlines('data.txt').to_a
count = 0
max_index = 1999

data.each_with_index do |item, index|
  if(index-1 != -1 && index+2 <= max_index)
    previous_sum = data[index-1].to_i + data[index].to_i + data[index+1].to_i
    present_sum = data[index].to_i + data[index+1].to_i + data[index+2].to_i
    if previous_sum < present_sum
      count += 1
    end
  end
end

puts count