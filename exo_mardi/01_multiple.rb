array = [*1..1000]

arr1 = array.reject!{|x| x%5!=0}
arr2 = arr1.reject!{|x| x%3!=0}

puts arr2.sum