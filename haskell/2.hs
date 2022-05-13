myButLast :: [a] -> a
-- myButLast x = last $ init x
myButLast [a, b] = a
myButLast (_:xs) = myButLast xs
