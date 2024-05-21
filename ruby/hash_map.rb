class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @tail = nil
  end
end

class Node
  attr_accessor :key, :value, :next

  def initialize(key, value)
    @key = key
    @value = value
    @next = nil
  end
end

def hash(key)
  hash_code = 0
  prime_number = 31

  key.each_char { |char| hash_code = prime_number * hash_code + char.ord}

  hash_code
end

class HashMap
  
  attr_accessor :keys

  def initialize
    @buckets = Array.new() {LinkedList.new}
  end

  def set(key, value)

    hash_code = hash(key)
    node = Node.new(key, value)
    index = @buckets[hash_code]

    @buckets[index] = node if index.nil?
    node.value = value if node.key == key
    until node.next.nil?
      node.value = value if node.key == key
      node = node.next
    end
    node.next = node
  end

end

hash_map = HashMap.new()
hash_map.set("carlos", 25)
p hash_map.keys
hash.map.set("johm", 12)