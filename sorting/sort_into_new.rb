list = [5,4,3,2,1]
sorted_list = []

p "#{list} -- #{sorted_list}"

list.size.times do
  sorted_list.push list.delete(list.min)
  p "#{list} -- #{sorted_list}"
end
