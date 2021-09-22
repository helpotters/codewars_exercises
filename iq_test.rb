#!/usr/bin/env ruby

def iq_test(list)
 list = list.split.map(&:to_i)
 list.one? { |num| num.odd? } ? evenness = true : evenness = false
 return list.index { |num| num.odd? == evenness } + 1
end

# def iq_test(input, list = input.split.map(&:to_i))
#   return list.index { |num| num.odd? == list.one? { |val| val.odd? } } + 1
# end

p iq_test("100 99 100 56")
