class Node
  attr_accessor :data, :next_node
  def initialize(data)
    @data      = data
    @next_node = nil
  end
end

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

  def last_node
    current_node = @head
      if current_node.next_node == nil
        last_node = current_node
      else
        until current_node.next_node == nil
          current_node = current_node.next_node
          last_node = current_node
        end
      end
    last_node.data
  end
end


linky = Ill.new
linky.add_node("a")
linky.add_node("b")
linky
# linky.add_node("c")
linky.last_node

