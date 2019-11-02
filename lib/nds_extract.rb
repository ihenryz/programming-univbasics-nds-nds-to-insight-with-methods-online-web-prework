require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  directors_database.each do |director_hash|
    total = 0
    director_hash[:movies].each do |movie|
        total += movie[:worldwide_gross]
    end
    result[director_hash[:name]] = total
  end 
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total = 0
  director_data[:movies].each do |movie|
    total += movie[:worldwide_gross]
  end
  total
end


# def directors_totals(nds)
#   hash = {}
#   nds.each do |director_hash| 
#     total = 0
#     director_hash[:movies].each do |movie|
#         total += movie[:worldwide_gross]
#     end
#     hash[director_hash[:name]] = total
#   # binding.pry
#   end 
#   hash
# end