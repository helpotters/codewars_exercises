#!/usr/bin/env ruby

def list names
  string = ""
  names.each do |item|
    string = string + ", #{item[:name]}" unless string == ""
    string = string + "#{item[:name]}" if string == ""
  end

  last_comma = string.rindex(',')
  return string if last_comma.nil?
  string[last_comma]= " &"
  return string
end

puts list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
