arr = [1,2,3,4,5]
p arr

p arr.map {|x| x.even?}
p arr.select {|x| x.even?}
p arr.reject {|x| x.even?}
p arr.reduce(10) {|fact,x| fact*x}

arr.tap {|x| puts x}.map! {|x| x*x}
p arr