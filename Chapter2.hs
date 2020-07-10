--main = print $ 1 `test` 10
--main = print n

double x = x + x
quadruple x = double (double x)

factorial n = product [1 .. n]
average ns = sum ns `div` length ns
--Could also be => ns = div (sum ns) (length ns)

{-
Multi-Line Comment
-}

test a b = a + b

n = a `div` length xs
 where
  a  = 10
  xs = [1, 2, 3, 4, 5]

lastElementOne [] = 0
lastElementOne xs = xs !! (length xs - 1)
lastElementTwo [] = 0
lastElementTwo xs = head (reverse xs)
lastElementThree [] = 0
lastElementThree xs = last xs

removeLastElementOne [] = []
removeLastElementOne xs = init xs
removeLastElementTwo [] = []
removeLastElementTwo xs = take (length xs - 1) xs
removeLastElementThree [] = []
removeLastElementThree xs = reverse (drop 1 (reverse xs))
