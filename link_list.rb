class Node
  attr_accessor :data, :link
  def initialize(data)
    @data      = data
    @link = nil
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
      until current_node.link == nil
        current_node = current_node.link
      end
      current_node.link = Node.new(data)
    end
  end

  def count
    if @head.nil?
      0
    else
      count = 1
      current_node = @head
      until current_node.link == nil
        count += 1
        current_node = current_node.link
      end
      count
    end
  end

  def last_node
    current_node = @head
    if current_node.link == nil
      last_node = current_node
    else
      until current_node.link == nil
        current_node = current_node.link
        last_node    = current_node
      end
    end
    last_node.data
  end

  def pop
    # require 'pry'; binding.pry
    if @head.link == nil
      @head = nil
    else
      until @head.link == nil
        @head = @head.link
        last_node = @head
      end
    end
    last_node = nil
  end
end


linky = Ill.new
linky.add_node("a")
linky.add_node("b")
linky
linky.pop
linky
