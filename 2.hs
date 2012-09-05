-- Project Euler Problem 2

ret s a b max
  | (max <= a) = s
  | otherwise = ret (s+a) b (a+b) max

main = print $ ret 0 1 2 4000000
