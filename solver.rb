class Solver
  def factorial(num)
    result = 1
    (1..num).each do |i|
      result *= i
    end
    result
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(num)
    if (num / 3).zero?
      'fizz'
    elsif (num / 5).zero?
      'buzz'
    elsif (num / 3).zero? && (num / 5).zero?
      'fizzbuzz'
    else
      num.to_s
    end
  end
end
