def dictionary_sort some_array
  recursive_sort some_array, [] 
end 

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  else
    lowercase_array = []
    unsorted_array.each{|n| lowercase_array.push(n.downcase)}
    small = lowercase_array.min
    unsorted_array.delete_at(lowercase_array.index(small))
    sorted_array.push(small)
    return recursive_sort unsorted_array, sorted_array
  end
end

puts(dictionary_sort(['can','feel','singing.','like','A','can']))
