myLength :: [a] -> Int
myLength [x] = 1
myLength (_:x) = 1 + myLength x
