elementAt :: [a] -> Int -> a
elementAt (x:_) 0 = x
elementAt (_:x) y = elementAt x (y-1)
