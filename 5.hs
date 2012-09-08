-- Project Euler Problem 5

sumRemainder s xs = sum $ map (mod s) xs
searchTheAnswer t s i
  | (0 == (sumRemainder t [1..i])) = t
  | (0 /= (sumRemainder t [1..(i - 1)])) = do
    let k = answer (i - 1)
    searchTheAnswer k k i
  | otherwise = searchTheAnswer (t + s) s i
answer x = searchTheAnswer ((x - 1) * x ) x x

main = print $ answer 20 -- 232792560

-- foldr1 lcm [1..20]
