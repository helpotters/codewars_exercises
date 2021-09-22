#!/usr/bin/env ruby

def descending_order(n)
  data = n.to_s.split('')
  data.sort.reverse.join.to_i
end

puts descending_order(98134768815432)
