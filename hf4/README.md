A következő feladatokat rekurzívan oldjátok meg!

Definiálj egy olyan függvényt, amely előállít egy listát, amely a második paraméterét annyiszor tartalmazza, amennyi az első paramétere volt!

```
replicate' :: Int -> a -> [a]
```

Tesztek:

```
replicate' 5 'a' == "aaaaa"
replicate' 10 'p' == "pppppppppp"
replicate' 2 2 == [2,2]
```

Add meg egy Bool értékeket tartalmazó lista össze-"és"-elésének eredményét!

```
and' :: [Bool] -> Bool
```

Tesztek:

```
and' [True, True, True, True]
and' []
not (and' [True, False, True, True])
not (and' [False, False, False])
```

Add meg azt a függvényt, amely eldönti, hogy egy érték eleme-e egy listának!

```
elem' :: Eq a => a -> [a] -> Bool
```

Tesztek:

```
elem' 4 [1,2,3,4]
elem' 'c' "cica"
not (elem' 'c' "almafa")
not (elem' 3 [])
```

Adj meg egy függvényt, amely kiválasztja egy lista legnagyobb elemét! Üres lista esetén adj hibát! Egyelemű lista esetén az egyetlen elem legyen a maximum! Használd a max függvényt két érték közül a nagyobbik kiválasztására.

```
maximum' :: Ord a => [a] -> a
```

Tesztek:

```
maximum' [1..10] == 10
maximum' [10,9..1] == 10
maximum' [1,2,7,1,4,2,6] == 7
```
