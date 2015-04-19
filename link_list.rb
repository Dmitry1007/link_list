class Ill
  attr_accessor :head
  def initialize
    @head  = nil
  end

  def add_node(data)
    if @head == nil
      @head  = Node.new(data)
    else  
      current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    if @head.nil?
      0
    else
      count = 1
      current_node = @head
      while current_node.next_node != nil
        count += 1
        current_node = current_node.next_node
      end
      count
    end
  end

end

class Node
  attr_accessor :data, :next_node
  def initialize(data)
    @data      = data
    @next_node = nil
  end
end

# linky = Ill.new

# linky.add_node("a")
# linky.head

# linky.add_node("b")
# linky.head

# linky.add_node("c")
# linky.head



# ```
# List -- (head) --> ["hello" | -]-- (link) --> ["world" | -]-- (link) --> ["!" | ]
# ```
# The three nodes here hold the data "hello", "world", and "!". 
# The first two node have links which point to other nodes. 
# The last node, holding the data "!", has no reference in the link spot. 
# This signifies that it is the end of the list.

#   Recursive solutions use methods which call themselves to walk through nodes. 
# * Most of your methods will be defined on the `List` itself, but you will need to manipulate one or more `Node`s to implement them. 
# * An __empty__ list has `nil` as its head
# * The __tail__ of a list is the node that has `nil` as its next node
