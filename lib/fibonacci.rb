class Fibonacci 
  def fibs(n, sequence = [0,1]) 
    if n > 0
      sequence.push(sequence[sequence.length - 1] + sequence[sequence.length - 2]) 
      return fibs(n - 1, sequence) 
    end 
    sequence.delete_at(-1) 
    sequence.delete_at(-1) 
    return sequence
  end
end 

start = Fibonacci.new 
puts start.fibs(5) 
