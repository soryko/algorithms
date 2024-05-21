class Node
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class Tree
  def initialize
    @root = build_tree
  end

  def build_tree(array)
    root_node = Node.new(array[0]) 
    current_node = root_node

    array[1..].each do |int|
      until current_node.right.nil? && current_node.left.nil?
        if int > current_node.value & current_node.right != nil
          current_node = current_node.right
        elsif int < current_node.value & current_node.left != nil
          current_node = current_node.left
        end
      end
      if int > current_node.value
        current_node.right = Node.new(int)
      else
        current_node.left = Node.new(int)
      end
    end
     
  end
end