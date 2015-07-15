def fibonacci (n, cache = [])
  return n if n <= 1
  cache[n] ||= (fibonacci(n - 1, cache) + fibonacci(n - 2, cache))
end

def fibo_for n
  total = [0]

  for i in 0..n
    if i <= 1
      total[i] = i
    else
      total[i] = total[i - 1] + total[i - 2]
    end
  end
  total[n]
end

puts fibonacci(100)
puts fibo_for(100)
