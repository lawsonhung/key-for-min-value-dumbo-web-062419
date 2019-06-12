# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    lowest_value = nil
    lowest_key = nil

    name_hash.each do |current_key, current_value|
        if lowest_value == nil || current_value < lowest_value
        # Why does the if statement below throw an error? Is it because Ruby reads code from left to right, so its comparing current_value(an integer) to lowest_value (which starts off as nil)?
        # Error thrown:
        #  ArgumentError:
        #  comparison of Integer with nil failed
        # if current_value < lowest_value || lowest_value == nil
            lowest_value = current_value
            lowest_key = current_key
        end
    end

    lowest_key
end