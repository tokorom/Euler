-- Project Euler Problem 3

answer x a
  | (x < a*a) = x
  | (0 == mod x a) = answer (div x a) a
  | otherwise = answer x (a+1)

main = print $ answer 600851475143 2
