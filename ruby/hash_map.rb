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

  def initialize(size = 2048)
    @buckets = Array.new(size) { LinkedList.new }
  end

  def set(key, value)

    hash_code = hash(key)
    index = hash_code % @buckets.size
    bucket = @buckets[index]

    current_node = bucket.head

    if current_node.nil?
      bucket.head = Node.new(key, value)
    else
      until current_node.nil?
        if current_node.key == key
          current_node.value = value
          return
        end
        current_node = current_node.next
      end
      new_node = Node.new(key, value)
      new_node.next = bucket.head
      bucket.head = new_node
    end
  end

  def get(key)
    hash_code = hash(key)
    index = hash_code % @buckets.size
    bucket = @buckets[index]
    
    current_node = bucket.head

    until current_node.nil?
      return current_node if current_node.key == key
      current_node = current_node.next
    end
    nil
  end

  def has?(key)
    hash_code = hash(key)
  index = hash_code % @buckets.size
  bucket = @buckets[index]

  current_node = bucket.head

  until current_node.nil?
    return true if current_node.key == key
    current_node = current_node.next
  end
  false
  end
end

hash_map = HashMap.new(1024)
hash_map.set("carlos", 25)
hash_map.set("john", 12)
p hash_map.get("carlos")
p hash_map.has?('john')