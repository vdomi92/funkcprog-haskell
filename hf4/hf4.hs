replicate' :: Int -> a -> [a]
replicate' 0 y = []
replicate' x y = y : replicate' (x-1) y

and' :: [Bool] -> Bool
and' [] = True
and' (x:xs) =  x  && and' (xs)

elem' :: Eq a => a -> [a] -> Bool
elem' y [] = False
elem' y (x:xs) = if y == x
                        then True
                        else elem' y (xs)

maximum' :: Ord a => [a] -> a
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)                        