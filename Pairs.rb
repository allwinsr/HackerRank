# Enter your code here. Read input from STDIN. Print output to STDOUT
hash = {}
input = gets
array = input.split(' ')
T = array[0].to_i
diff = array[1].to_i
count = 0

keys = []
key = gets

keys = key.split(' ')    

(0..T-1).each do |i|
    key = keys[i].to_i

    if hash.has_key?(key)
      hash.store(key,true)
      count = count + 1
   else
      hash.store(key,false)
   end   	
   
    key = key + diff
   if hash.has_key?(key)
      hash.store(key,true)
      count = count + 1
   else
      hash.store(key,false)
   end
end
p count
