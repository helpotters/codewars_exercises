#!/usr/bin/env ruby
def title_case(string, exception = '')
  exception = exception.split.map(&:downcase)

  begin
    title = string.split(' ')
                  .map(&:downcase)
                  .map { |word| exception.none?(word) ? word.capitalize : word }
    title[0] = title[0].capitalize
  rescue StandardError
    return ''
  end
  title.join(' ')
end
