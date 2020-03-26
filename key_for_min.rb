# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  # values = []
  # name_hash.each do |key, value|
  #   values << value
  # end
  # puts values
  # temp = values[0]
  # values.each do |number|
  #   if number >= temp
  #     values.delete(number)
  #   elsif number < temp
  #     temp = number
  #   end
  # end
  lowestKey = ""
  lowestValue = 0
  count = 0
    if name_hash.length == 0
      nil
    elsif name_hash.length >= 1
      name_hash.each do |key,value|
        count += 1
        if count == 1
          lowestKey = key
          lowestValue = value
        end
        if count > 1 && name_hash[key] < lowestValue
          lowestKey = key
          lowestValue = value
        end
      end
    end
end
