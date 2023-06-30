# frozen_string_literal: true

class Solver
  def factorial(num)
    raise ArgumentError if num.negative?

    return 1 if num.zero?

    (1..num).reduce(:*)
  end

  def reversed(str)
    str.reverse
  end

  def fizzbuzz(num)
    if (num % 3 == 0 && num % 5 == 0)
      "fizzbuzz"
    elsif (num % 3 == 0)
      "fizz"
    elsif (num % 5 == 0)
      "buzz"
    else
      num.to_s
    end
  end
end
