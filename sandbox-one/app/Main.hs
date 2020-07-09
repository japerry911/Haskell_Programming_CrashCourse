--main = print result
--main = print $ factorial 5
main = 
    let x = 5
    in print $ myIf (x == 5) "is five" "is not five"

addBrackets s = "[" ++ s ++ "]"
result = map addBrackets ["one", "two", "three"]

factorial n = if n < 2 then 1 else n * factorial(n - 1)

myIf True thenFunc elseFunc = thenFunc
myIf False thenFunc elseFunc = elseFunc