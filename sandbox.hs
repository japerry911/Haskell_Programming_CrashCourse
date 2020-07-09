--main = print $ double (double 100)
--main = print $ sumBook [1, 2, 3]
--main = print $ sum [1, 2, 3]
--main = print $ qsort [3, 5, 1, 4, 2]
--main = print $ qsort ["z", "w", "x", "a", "b", "d", "c"]
--main = print $ double 10
--main = print $ doubleTwo 10
--main = print $ productExercise [2, 3, 4]
--main = print $ qsortReverse [1, 2, 3, 4, 5, 3, 1, 4, 9, 0]
main = print $ qsort [2, 2, 3, 3, 1, 1]

double x = x + x

qsort []       = []
qsort (x : xs) = qsort smaller ++ [x] ++ qsort larger
 where
  smaller = [ a | a <- xs, a <= x ]
  larger  = [ b | b <- xs, b > x ]

--sumBook [] = 0
--sumBook (n:ns) = n + sumBook ns

seqn []           = return []
seqn (act : acts) = do
  x  <- act
  xs <- seqn acts
  return (x : xs)

doubleTwo x = 2 * x

--productExercise []       = 1
--productExercise (x : xs) = x * productExercise xs

qsortReverse []       = []
qsortReverse (x : xs) = qsortReverse larger ++ [x] ++ qsortReverse smaller
 where
  smaller = [ aa | aa <- xs, aa <= x ]
  larger  = [ bb | bb <- xs, bb > x ]
