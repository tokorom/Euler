-- Project Euler Problem 9

searchTriple n = [(a, b, c) | c <- [1..(div n 2)], b <- [1..(c-1)], a <- [1..(b-1)], a + b + c == n, a ^ 2 + b ^ 2 == c ^ 2]

main = print $ searchTriple 1000 -- 200, 375, 425
