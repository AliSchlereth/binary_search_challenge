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
