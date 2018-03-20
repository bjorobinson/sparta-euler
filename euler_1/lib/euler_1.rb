class Euler1
  def range(start,fin)
    start..fin
  end

  def div_3(start,fin)
    local_range = range(start,fin)
    valid_range = local_range.select{|x| x%3==0}
  end

  def div_5(start,fin)
    local_range = range(start,fin-1)
    valid_range = local_range.select{|x| x%5==0}
  end

  def div(start,fin)
    full_valid_range = div_3(start,fin) + div_5(start,fin)
    full_valid_range.uniq
  end

  def add(start,fin)
    full_valid_range = div(start,fin)
    sum_of_multiples = 0
    full_valid_range.each{|x| sum_of_multiples+=x}
    return sum_of_multiples
  end
end

answer1 = Euler1.new
puts answer1.add(1,1000)
