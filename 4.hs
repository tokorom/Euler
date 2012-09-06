-- Project Euler Problem 4

isPalindromic n = (show n) == (reverse $ show n)
searchPalindromic n m = maximum [x*y | x <- [n..m], y <-[x..m], isPalindromic $ x*y]

main = print $ searchPalindromic 100 999 -- 906609
