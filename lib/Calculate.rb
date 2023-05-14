class Calculate
  # attr_reader :num_a, :num_b

  def self.initialize(num_a, num_b)
    @num_a = num_a
    @num_b = num_b
  end

  def addition(num_a, num_b)
    num_a + num_b
  end

  def subtraction(num_a, num_b)
    num_a - num_b unless num_a < num_b
  end

  def multiplication(num_a, num_b)
    num_a * num_b
  end

  def division(num_a, num_b)
    num_a / num_b unless num_a.zero? || num_b.zero?
  end
end
