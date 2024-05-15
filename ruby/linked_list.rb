
class LinkedList
    attr_reader :list, :index, :i_range
    def initialize
        @list = ""
        @index = 0
        @i_range = 19
    end

    def append(data)
        if @index = 0 
            node = HeadNode.new(data)
            @list = node.figure
        else 
            unless @index == 1 do
                value = @list[(-1 * @i_range + 8)..(-1 * @i_range + 10)].chomp
                replacement_node = Node.n
                list_copy = @list.duplicate[..@i_range]
                list_copy += Node.figure
            node = TailNode.new(data)
            @list += node.figure
        end
    end

    def prepend(data)
        if list.length > 1
            
end

class Node
    attr_reader :head, :tail, :value, :next
    def intialize(self, value)
        @value = value
        @head = false
        @tail = true
        @next = nil
        @figure = "[NODE #{value} ] -->"
    end

    def next_node
        nil
    end
end

class TailNode < Node
    attr_reader :head, :tail, :value, :next
    def initialize(self, value)
        @value = value
        @head = false
        @tail = true
        @next = nil
        @figure = "[HNODE #{value}]-->"
    end
end

class HeadNode < Node
    attr_accessor :head, :tail, :value, :next
    def initialize(self, value)
        @value = value
        @head = true
        @tail = false
        @next = nil
        @figure = " [TNODE #{value} ] "
    end
end