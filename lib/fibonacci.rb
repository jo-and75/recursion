class Fibonacci 
  def fibonacci_recursive(n, sequence = [0,1]) 
    if n > 0
      sequence.push(sequence[sequence.length - 1] + sequence[sequence.length - 2]) 
      return fibonacci_recursive(n - 1, sequence) 
    end 
    sequence.delete_at(-1) 
    sequence.delete_at(-1) 
    return sequence
  end 

  def fibonacci_iteration(n,sequence = [0,1])  
    loop do
      if n > 0 
        sequence.push(sequence[sequence.length - 1] + sequence[sequence.length - 2])
      end 
       break if sequence.length == n
    end 
    return sequence
  end
end 

# start = Fibonacci.new 
# puts start.fibonacci_recursive(8) 
