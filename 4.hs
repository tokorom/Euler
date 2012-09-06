-- Project Euler Problem 4

isPalindromic n = isPalindromicForString $ show n
isPalindromicForString s
  | (1 >= (length s)) = True
  | ((head s) == (last s)) = isPalindromicForString $ tail $ init s
  | otherwise = False

searchPalindromic max = searchPalindromicForProduct max max max
searchPalindromicForProduct a b max
  | (100 > a) = (0, 0, 0)
  | isPalindromic (a * b) = (a, b, a * b)
  | (a == b) = searchPalindromicForProduct (a - 1) max max
  | otherwise = searchPalindromicForProduct a (b - 1) max

main = print $ searchPalindromic 999 -- (924, 962, 888888)
