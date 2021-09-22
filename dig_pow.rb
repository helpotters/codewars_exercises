#!/usr/bin/env ruby

def dig_pow(number, power)
  split_number = number.to_s.chars.map(&:to_i)
  powered_number = 0

  split_number.each_with_index do |digit, index|
    powered_number += digit**(power + index)
  end

  case powered_number % number
  when 0
    powered_number / number
  else
    -1
  end
end
