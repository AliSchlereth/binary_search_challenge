require "minitest/autorun"
require 'minitest/pride'
require './binary_search'

class BinarySearchTest < Minitest::Test

  def test_it_returns_true_for_single_element_array
    set = [2]
    search = BinarySearch.new(set)

    assert search.is_present?(2)
  end

  def test_it_returns_false_for_single_element_array
    set = [2]
    search = BinarySearch.new(set)

    refute search.is_present?(5)
  end

  def test_it_returns_true_for_double_element_array
    set = [2, 5]
    search = BinarySearch.new(set)

    assert search.is_present?(5)
  end

  def test_it_returns_true_for_triple_element_array
    set = [2, 5, 7]
    search = BinarySearch.new(set)

    assert search.is_present?(2)
  end

  def test_it_returns_true_or_false_on_multi_element_array
    set = [1, 2, 5, 6, 7]
    search = BinarySearch.new(set)

    assert search.is_present?(1)
    assert search.is_present?(5)
    assert search.is_present?(6)
    refute search.is_present?(9)
  end

  def test_it_can_search_for_letters_too
    set = ["a", "b", "r", "t", "w"]
    search = BinarySearch.new(set)

    assert search.is_present?("a")
    assert search.is_present?("r")
    refute search.is_present?("o")
  end

end
