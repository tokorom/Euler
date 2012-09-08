-- Project Euler Problem 6

answer n = do
  let s = sum [1..n]
  let sqr n = n * n
  (s * s) - (sum $ map sqr [1..n])

main = print $ answer 100 -- 25164150
