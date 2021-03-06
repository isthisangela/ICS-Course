def shuffle some_array
  recursive_shuffle some_array, [] 
end 

def recursive_shuffle unshuffled_array, shuffled_array
  if unshuffled_array.length == 0
    return shuffled_array
  else
    ind = rand(unshuffled_array.length)
    next = unshuffled_array[ind]
    unshuffled_array.delete_at(ind)
    shuffled_array.push(next)
    return recursive_shuffle unshuffled_array, shuffled_array
  end
end

files = Dir['**/*.ogg']
files = shuffle files

File.open 'playlist.m3u', 'w' do |f|
  files.each do |name|
    f.write name+"\n"
  end
end
