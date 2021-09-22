#!/usr/bin/env ruby

def max_sequence(arr)
  best_arr = []
  end_of_list = arr.length
  arr.each_with_index do |value, current_item|
    for items in (0 + current_item)..end_of_list
      current = arr.slice(current_item, items)
      puts "#{current}: #{items}; #{current_item}"
      best_arr = current if current.sum.to_i > best_arr.sum.to_i
    end
  end
  p best_arr.sum
end
max_sequence([-1, -5, 19, -7, 5, -4, 4])
