class Solver
  def factorial(number)
    raise RuntimeError if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(word)
    reversed = []
    word.chars.each { |char| reversed.unshift(char) }
    reversed.join
  end
end