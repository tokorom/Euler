-- Project Euler Problem 1

import Data.List

ret a b max = sum (union [a,a*2..max-1] [b,b*2..max-1])

main = print $ ret 3 5 1000
