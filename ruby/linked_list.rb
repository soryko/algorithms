
class LinkedList
    attr_reader :head, :tail
    def initialize
        @head = nil
        @tail = nil
    end
    def print_list
        nodes = []
        current_node = @head
        until current_node.nil?
            nodes << current_node.value
            current_node = current_node.next
        end
        puts nodes.join("] --> [")
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
list.print_list
