-- Project Euler Problem 7

checkPrime n [] = True
checkPrime n (x:xs)
  | 0 == mod n x = False
  | n < x ^ 2 = True
  | otherwise = checkPrime n xs

isPrime 2 = True
isPrime n = checkPrime n [2..]

primes = 2 : filter isPrime [3,5..]

main = print $ primes !! 10000
