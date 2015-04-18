class Ill
#   Iterative solutions use looping structures 
#   (`while`, `for`) to walk through the nodes in the list. 
end

class Rll
  attr_reader :head, :count
  def initialize
    @head  = nil
    @count = 0
  end

  def add_node(data)
    @count   += 1
    if @head == nil
      @head  = Node.new(data)
    else
      @head  = @head.next_node
    end
  end
end

class Node
  attr_reader :data, :next_node
  def initialize(data)
    @data      = data
    @next_node = "last"
  end
end

linky = Rll.new
linky.add_node("a")
linky
linky.add_node("b")
linky.count


# The __list__ itself can hold a reference to one thing -- the head node.
# Each node can hold a single element of data and a link to the next node in the list.
# The last node of the list is often called its __tail__.
# Using sweet ASCII art, it might look like this:

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
