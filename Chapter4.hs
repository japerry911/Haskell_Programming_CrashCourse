--main = print $ (\x -> x + x) 10
--main = print $ odds 5
--main = print $ successorTest 5
--main = print $ halve [1, 2, 3, 4, 5, 6]
--main = print $ halve [1, 2, 3, 4, 5]
--main = print $ third [1, 2, 3, 4, 5]
main = print $ safetail [1, 2, 3, 4, 5]

safetail :: [a] -> [a]
--safetail xs = if null xs then [] else drop 1 xs
--safetail xs | null xs   = []
--            | otherwise = drop 1 xs
safetail (_ : xs) = xs


{-halve :: [a] -> ([a], [a])
halve xs =
  if even (length xs) then splitAt (length xs `div` 2) xs else ([], [])-}

--halve xs = (take n xs, drop n xs) where n = length xs `div` 2

third :: [a] -> a
--third xs = head (tail (tail xs))
--third xs = xs !! 2
third (_ : _ : x : _) = x

odds :: Int -> [Int]
odds n = map (\x -> x * 2 + 1) [0 .. n - 1]

successorTest :: Int -> [Int]
successorTest n = map (* 100) [0 .. n - 1]

{-even :: Integral a => a -> Bool
even n = n `mod` 2 == 0

splitAt :: Int -> [a] -> ([a], [a])
splitAt n xs = (take n xs, drop n xs)

recip :: Factorial a => a -> a
recip n = 1 / n

abs :: Int -> Int
abs n = if n >= 0 then n else -n

--signum :: Int -> Int
--signum n = if n < 0 then -1 else if n == 0 then 0 else 1
signum :: Int -> Int
signum n | n < 0     = -1
         | n == 0    = 0
         | otherwise = 1

(&&) :: Bool -> Bool -> Bool
{-True  && True  = True
False && True  = False
True  && False = False
False && False = False-}
{-True && True = True
_    && _    = False-}
-- ^ Wildcard Pattern Operator
True  && b = b
False && _ = False

fst :: (a, b) -> a
fst (x, _) = x

snd :: (a, b) -> b
snd (_, y) = y

test :: [Char] -> Bool
{-test ['a', _, _] = True
test _           = False-}
test ('a' : _) = True
test _         = False-}
