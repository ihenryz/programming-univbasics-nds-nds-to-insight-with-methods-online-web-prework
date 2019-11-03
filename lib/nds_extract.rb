require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nds.each do |director|
    result[director[:name]] = gross_for_director(director)
  end
  result
end

# def directors_totals(nds)
#   result = {}
#   director_index = 0
#   while director_index < nds.size do
#     director = nds[director_index]
#     #binding.pry
#     result[director[:name]] = gross_for_director(director)
#     director_index += 1
#   end
#   result
# end



# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total = 0
  director_data[:movies].each do |movie|
    total += movie[:worldwide_gross]
  end
  total
end

# def gross_for_director(d)
#   total = 0
#   index = 0

#   while index < d[:movies].length do
#     total += d[:movies][index][:worldwide_gross]
#   # binding.pry
#     index += 1
#   end

#   total
# end