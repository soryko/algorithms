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
  
  attr_accessor :buckets

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

    current_node = bucket&.head

    until current_node.nil?
      return true if current_node.key == key
      current_node = current_node.next
    end
    false
  end

  def remove(key)
    hash_code = hash(key)
    index = hash_code % @buckets.size
    bucket = @buckets[index]

    current_node = bucket.head
    incision = nil

    until current_node.nil?
      if current_node.key == key
        if incision.nil?
          bucket.head = current_node.next
        else
        incision.next = current_node.next
        end
        return true
      end
      incision = current_node
      current_node = current_node.next
    end
    false
  end

  def length
    count = 0
    @buckets.each do |bucket|
      current_node = bucket.head
      if current_node != nil
        count += 1
      end
    end
    count
  end

  def clear
    @buckets = Array.new(@buckets.size) { LinkedList.new }
  end

  def keys
    keys = []

    @buckets.each do |bucket|
      current_node = bucket.head
      if current_node != nil
        until current_node.nil?
          keys << current_node.key
          current_node = current_node.next
        end
      end
    end
    keys
  end

  def values
    values = []

    @buckets.each do |bucket|
      current_node = bucket.head
      if current_node != nil
        until current_node.nil?
          values << current_node.value
          current_node = current_node.next
        end
      end
    end
    values
  end

  def entries
    entries = []

    @buckets.each do |bucket|
      current_node = bucket.head
      if current_node != nil
        until current_node.nil?
          entries << [current_node.key, current_node.value]
          current_node = current_node.next
        end
      end
    end
    entries
  end
end

hash_map = HashMap.new(1024)
hash_map.set("carlos", 25)
hash_map.set("john", 12)
p hash_map.get("carlos")
p hash_map.has?('john')
hash_map.remove('john')
p hash_map.get('john')
p hash_map.has?('john')
hash_map.set("sam", 31)
hash_map.set("alex", 19)
p hash_map.length
p hash_map.keys
p hash_map.values
p hash_map.entries