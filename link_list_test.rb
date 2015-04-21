gem 'minitest'
require 'minitest/autorun'
require './link_list'

class ListTest < Minitest::Test
  attr_reader :list

  def setup
    @list = Ill.new
  end

  def test_it_starts_with_zero_elements
    assert_equal 0, list.count
  end

  def test_it_pushes_three_elements_onto_a_list
    list.add_node("A")
    list.add_node("B")
    list.add_node("C")
    assert_equal 3, list.count
  end

  def test_it_finds_the_last_node 
    list.add_node("A")
    list.add_node("B")
    list.add_node("C")
    list.add_node("D")
    assert_equal "D", list.last_node
  end

  def test_it_pops_the_last_node_from_the_list
    list.add_node("A")
    list.pop 
    assert_equal nil, list.head

    list.add_node("A")
    # list.add_node("B")
    # list.add_node("C")
    list.pop 
    assert_equal nil, list.last_node
  end

  def test_a_popped_element_is_removed
  end  

  def test_it_pops_nil_when_there_are_no_elements
  end

  def test_it_deletes_a_solo_node
  end

  def test_it_does_not_delete_when_the_data_does_not_match
  end

  def test_it_deletes_a_last_node
  end

  def test_it_deletes_a_middle_node
  end

  def test_it_deletes_the_head_when_there_are_more_nodes
  end

  def test_it_converts_to_an_array_when_there_are_no_elements
  end

  def test_it_converts_to_an_array_with_several_elements
  end

end


# * access the "tail" (last element) of the list
# * "pop" an element from the end of the list
# * access an element by numeric position (as with an array index)