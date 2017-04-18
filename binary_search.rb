require "pry"

class BinarySearch

  def initialize(number_set)
    @number_set = number_set
  end

  def is_present?(input_num)
    @present = false
    find_number(input_num, @number_set)
    @present
  end

  def find_number(new_num, new_num_set)
    return if @present == true
    middle = new_num_set.length / 2
    return if new_num_set.length <= 2 && new_num_set[1] != new_num && new_num_set[0] != new_num
    evaluate_num_set(new_num, new_num_set, middle)
  end

  def evaluate_num_set(new_num, new_num_set, middle)
    if new_num_set[middle] == new_num
      @present = true
    else
      slide_to_new_num_set(new_num, new_num_set, middle)
    end
  end

  def slide_to_new_num_set(new_num, new_num_set, middle)
    if new_num > new_num_set[middle]
      middle = -1 if new_num_set.length == 2
      find_number(new_num, new_num_set[middle..-1])
    else
      middle = 0 if new_num_set.length == 2
      find_number(new_num, new_num_set[0..middle])
    end
  end

end

numbers = [1,3,5,7,9]
search = BinarySearch.new(numbers)
result1 = search.is_present?(7)
result2 = search.is_present?(3)
result3 = search.is_present?(2)
result4 = search.is_present?(1)
result5 = search.is_present?(4)
result6 = search.is_present?(9)


puts result1
puts result2
puts result3
puts result4
puts result5
puts result6

letters = ["a", "b", "f", "y"]
letter_search = BinarySearch.new(letters)
result7 = letter_search.is_present?("b")
result8 = letter_search.is_present?("c")
result9 = letter_search.is_present?("t")
puts result7
puts result8
