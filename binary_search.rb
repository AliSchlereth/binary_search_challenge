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
    return if new_num_set.length == 1 && new_num_set[0] != new_num
    return if new_num_set.length == 2 && new_num_set[1] != new_num
    if new_num_set[middle] == new_num
      @present = true
    else
      if new_num > new_num_set[middle]
        find_number(new_num, new_num_set[middle..-1])
      else
        find_number(new_num, new_num_set[0..middle])
      end
    end
  end

end

numbers = [1,3,5,7,9]
search = BinarySearch.new(numbers)
result1 = search.is_present?(7)
result2 = search.is_present?(3)
result3 = search.is_present?(4)

puts result1
puts result2
puts result3
