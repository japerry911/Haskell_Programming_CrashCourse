import           Data.Char

--main = print $ [ (x, y) | x <- [1, 2, 3], y <- [4, 5] ]
--main = print $ countSpecifcChars 'a' "aafclslamfnjrrnakcklaa"
--main = print $ encodeCaesarCipher "haskell is fun"
main = print $ encode (-3) (encode 3 "haskell is fun")

countSpecifcChars :: Char -> String -> Int
countSpecifcChars c s = length [ c' | c' <- s, c == c' ]


encodeCaesarCipher :: String -> String
encodeCaesarCipher s =
  unwords [ if isAlpha s' then [chr (ord s' + 3)] else [s'] | s' <- s ]

letToInt :: Char -> Int
letToInt c = ord c - ord 'a'

intToLet :: Int -> Char
intToLet n = chr (ord 'a' + n)

shift :: Int -> Char -> Char
shift n c | isLower c = intToLet ((letToInt c + n) `mod` 26)
          | otherwise = c

encode :: Int -> String -> String
encode n xs = [ shift n x | x <- xs ]
