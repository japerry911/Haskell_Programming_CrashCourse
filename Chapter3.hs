main = print $ multiply 3 2 1

multiply :: Int -> (Int -> (Int -> Int))
multiply x y z = x * y * z
