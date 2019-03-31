list = [5,4,3,2,1]
list = ["Tamia", "Michael", "Tam", "Dylan", "Ruby", "Dove", "Faye", "Chubby", "Christine", "Mark"]

p list
(list.size - 1).times do |i|
  n_smallest = list.delete(list.min(i + 1).last)
  list.insert(i, n_smallest)
  p "#{i} -- #{list}"
end
