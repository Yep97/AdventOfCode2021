data = File.readlines('data.txt').to_a
count = 0

data.each_with_index do |item, index|
  if(index-1 != -1)
    if(data[index-1].to_i < item.to_i)
      count += 1
    end
  end
end

puts count