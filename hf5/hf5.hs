--getValue :: Eq a => a -> [(a, b)] -> b -> b
--getValue x [] y = y
--getValue x (z:zs, w:ws) y = if x == z
--                                then w
--                                else getValue x (zs, ws) y

insert :: Ord t => t -> [t] -> [t]
insert x [] = [x]
insert x (y:ys) = if x < y
                        then (x:y:ys)
                        else y : insert x (ys)

sort' :: Ord t => [t] -> [t]
sort' [] = []
sort' (x:xs) = insert x (xs)

merge' :: Ord t => [t] -> [t] -> [t]
merge' (x:xs) [] = x:xs
merge' [] (x:xs) = x:xs
merge' (x:xs) (y:ys) = if x > y
                            then y : merge'(x:xs) (ys)
                            else x : merge' (xs) (y:ys)

--mergeSort :: Ord t => [t] -> [t]
--mergeSort [] = []
--mergeSort (x:xs) =