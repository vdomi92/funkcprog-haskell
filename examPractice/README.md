Add meg azt a függvényt, amely egy listából kiszűri a 2 hatványokat! Tipp: logBase használata segíthet.

```
twoPowers :: [Integer] -> [Integer]
```

Tesztek:

```
twoPowers [2,4,8] == [2,4,8]
twoPowers [1..10] == [2,4,8]
twoPowers [1..1100] == [2,4,8,16,32,64,128,256,512,1024]
twoPowers [1025..2000] == []
```

2. Add meg azt a függvényt, amely egy lista páratlan elemeit duplázza!

````
doubleOdds :: [Integer] -> [Integer]```
Tesztek:
```
doubleOdds [1..10] == [2,2,6,4,10,6,14,8,18,10]
doubleOdds [2,4,6] == [2,4,6]
doubleOdds [1,3,5] == [2,6,10]```
doubleOdds [] == [] 3. Add meg azt a függvényt, amely egy lista alapján megalkot egy olyan listát, amelyben csak az eredetileg páros elemek duplája szerepel!
```
doubleEvensRemoveOdds :: [Integer] -> [Integer]```
Tesztek:
```
doubleEvensRemoveOdds [1..10] == [4,8,12,16,20]
doubleEvensRemoveOdds [2,4,6] == [4,8,12]```
doubleEvensRemoveOdds [1,3,5] == [] 4. Add meg a filter függvény egy olyan verzióját, amely a feltételt nem teljesítő elemeket adja meg!
```
negativeFilter :: (a -> Bool) -> [a] -> [a]```
Tesztek:
```
negativeFilter even [1..10] == filter odd [1..10]```
negativeFilter isLetter "almafa123" == "123" 5. Add meg a zip függvény inverz műveletét!
```
unzip' :: [(a, b)] -> ([a], [b])```
Tesztek:
```
unzip'[('a', 1), ('b', 2), ('c', 3)] == ("abc", [1,2,3])
unzip'[(1, True), (2, False)] == ([1,2], [True, False])```
unzip'[] == ([], []) 6. Képezz le egy szöveget egy listára, amely azon sorok számait tartalmazza, amelyek üresek voltak!
```
empty :: String -> [Int]```
Tesztek:
```
empty "elso\nmasodik\n\nnegyedik\n" == [3]
empty "theme=dark\n\ntoolbar=0\n\nicons=gnome" == [2,4]
empty "" == []
```
````
