class Euler2
  def generate(limit)
    num1 = 1
    num2 = 2
    arr = [1]
    while num2 < limit do
      arr << num2
      num1,num2 = num2,num1+num2
    end
    return arr
  end

  def even_generate(limit)
    base_arr = generate(limit)
    even_arr = base_arr.select {|x| x%2==0}
  end

  def sum(limit)
    even_arr = even_generate(limit)
    sum_of_evens = 0
    even_arr.each{|x| sum_of_evens+=x}
    return sum_of_evens
  end
end
