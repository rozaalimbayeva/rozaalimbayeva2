def calculate_primes(n)
  primes = []
  (2..n).each do |num|
    primes << num if is_prime?(num)
  end
  primes
end

def is_prime?(num)
  return false if num <= 1
  (2..Math.sqrt(num)).each do |i|
    return false if num % i == 0
  end
  true
end

def calculate_fibonacci_sequence(n)
  fib = [0, 1]
  (2...n).each do |i|
    fib << fib[i - 1] + fib[i - 2]
  end
  fib
end

def calculate_pi(n)
  pi_sum = 0.0
  (0...n).each do |i|
    term = (-1)**i / (2.0 * i + 1)
    pi_sum += term
  end
  4 * pi_sum
end

n = 100
primes = calculate_primes(n)
fib = calculate_fibonacci_sequence(n)
pi_approximation = calculate_pi(n)

puts "Prime numbers up to #{n}: #{primes}"
puts "Fibonacci sequence up to #{n}: #{fib}"
puts "Approximation of pi using #{n} terms: #{pi_approximation}"
