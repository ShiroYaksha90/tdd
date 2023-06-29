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
end
