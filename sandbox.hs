--main = print $ double (double 100)
--main = print $ sumBook [1, 2, 3]
--main = print $ sum [1, 2, 3]
--main = print $ qsort [3, 5, 1, 4, 2]
main = print $ qsort ["z", "w", "x", "a", "b", "d", "c"]

double x = x + x

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where
                   smaller = [a | a <- xs, a <= x]
                   larger = [b | b <- xs, b > x]

--sumBook [] = 0
--sumBook (n:ns) = n + sumBook ns