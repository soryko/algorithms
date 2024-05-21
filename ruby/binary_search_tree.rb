class Node
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class Tree
  def initialize(array)
    @root = build_tree(array)
  end

  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
 
  def build_tree(array, root_node = nil)
    array = array.uniq
    return nil if array.empty?

    int = array.first
    if root_node.nil?
      root_node = Node.new(int)
    else
      current_node = root_node
      while true
        if current_node.value > int
          if current_node.left.nil?
            current_node.left = Node.new(int)
            break
          else
            current_node = current_node.left
          end
        elsif current_node.value < int
          if current_node.right.nil?
            current_node.right = Node.new(int)
            break
          else
            current_node = current_node.right
          end
        else
          break
        end
      end
    end
    build_tree(array[1..], root_node)
    root_node
  end

  def insert(value)
    if @root.nil?
      @root = Node.new(value)
      return
    else
      current_node = @root
      while true
        if current_node.value < value
          previous_node = current_node
          current_node = current_node.right
        elsif current_node.value < value
          previous_node = current_node
          current_node = current_node.left
        end
        if value < current_node.right.value && value > current_node.left.value
          next_node = current_node.right
          current_node.right = Node.new(value)
          current_node = current_node.right
          current_node.right = next_node
          break
        elsif value > current_node.left.value && value < current_node.right.value
          next_node = current_node.left
          current_node.left = Node.new(value)
          current_node = current_node.left
          current_node.left = next_node
          break
        end
      end
      @root
    end
  end
end

array = [1,7,4,23,8,9,4,3,5,7,9,67,6345,324]
tree = Tree.new(array)
tree.pretty_print
tree.insert(30)
tree.insert(25)
tree.insert(10)
tree.pretty_print