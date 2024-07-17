#write your code here

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(arr)
  array_sum = 0

  arr.each do |x|
    array_sum += x
  end

  array_sum
end

def multiply(*vars)
  array_product = 1

  vars.each do |el|
    array_product *= el
  end

  array_product
end

def power(base, exponent)
  val = 1
  exponent.times {val *= base}
  val
end

def factorial(base)

  if base == 0
    return 0
  end

  product = 1

  while base > 0
    product *=  base
    base -= 1
  end

  product
end


