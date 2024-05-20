
class LinkedList
    
    attr_reader :head, :tail
    def initialize

        @head = nil
        @tail = nil
    end

    def size
        num_nodes = 0
        current_node = @head
        until current_node.nil?
            num_nodes +=1
            current_node = current_node.next
        end
        puts "The linked list has #{num_nodes}"
    end

    def head
        p @head.value
        @head
    end

    def tail
        p @tail.value
        @tail
    end

    def print_list

        nodes = []
        start = "[head:"
        last = ":tail]"
        current_node = @head
        until current_node.nil?
            nodes << current_node.value
            current_node = current_node.next
        end
        puts start + nodes.join("] --> [") + last
    end

    def at(index)
        count =0
        current_node = @head
        until count == index
            current_node = current_node.next
            count += 1
        end
        current_node
        p current_node.value
    end


    def append_node(value)

        new_node = Node.new(value)
        if @head.nil? && @tail.nil?
            @head = new_node
            @tail = new_node
        else
            @tail.next = new_node
            @tail = new_node
        end
    end

    def prepend(value)

        new_node = Node.new(value)
        if @head.nil? && @tail.nil?
            @head = new_node
            @tail = new_node
        else
            new_node.next = @head
            @head = new_node
        end
    end
end

class Node
    attr_accessor :value, :next
    def initialize(value)
        @value = value
        @next = nil
    end
end

list = LinkedList.new
list.append_node(5)
list.append_node(15)
list.append_node(41)
list.prepend(10)
list.print_list
list.size
list.head
list.tail
list.at(3)