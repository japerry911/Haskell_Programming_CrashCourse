--main = print result
main = print $ factorial 5

addBrackets s = "[" ++ s ++ "]"
result = map addBrackets ["one", "two", "three"]

factorial n = if n < 2 then 1 else n * factorial(n - 1)