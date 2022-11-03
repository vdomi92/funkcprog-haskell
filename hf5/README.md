Nehezebb feladatok (5. házi feladat feladatai):

Adj meg egy függvényt, amely egy kulcs-érték párokat tartalmazó listából megadja az adott kulcshoz tartozó értéket! Adott a függvény paramétereként egy alapértelmezett érték is, ha nem szerepel a kulcs a listában, ezt az értéket add vissza!

```
getValue :: Eq a => a -> [(a, b)] -> b -> b
```

Tesztek:

```
getValue 2 [(1, "asd"),(2, "vbn"),(3, "f")] "default" == "vbn"
getValue 4 [(1, "asd"),(2, "vbn"),(3, "f")] "default" == "default"
```

Adj meg egy függvényt, amely egy rendezett listába beszúr egy értéket a rendezettséget megtartva!

```
insert :: Ord t => t -> [t] -> [t]
```

Tesztek:

```
insert 2 [4, 5, 9] == [2, 4, 5, 9]
insert 6 [4, 5, 9] == [4, 5, 6, 9]
insert 11 [4, 5, 9] == [4, 5, 9, 11]
insert 5 [4, 5, 9] == [4, 5, 5, 9]
insert 2 [] == [2]
```

Innentől kezdve a következő feladatok még nehezebbek, trükkösebb megoldást igényelnek.

Add meg azt a függvényt, amely a beszúró rendezés algoritmusa alapján visszaadja a paraméter lista rendezett változatát! Tipp: egy üres listába szúrj be egyesével az elemeket a rendezettség szerint megfelelő helyre. Használhatod az előbbi insert függvényt is akár.

```
sort' :: Ord t => [t] -> [t]
```

Tesztek:

```
sort' [5, -2, 3] == [-2, 3, 5]
sort' "almafa" == "aaaflm"
sort' [] == []
```

Add meg azt a függvényt, amely az összefésülő rendezés algoritmusa alapján visszaadja a paraméter lista rendezett változatát! Tipp: használd a gyakorlaton definiált "merge" függvényt!

```
mergeSort :: Ord t => [t] -> [t]
```

Tesztek:

```
mergeSort [5, 2, -4, 9, 3] == [-4, 2, 3, 5, 9]
mergeSort "almafa" == "aaaflm"
mergeSort [] == []
```

Definiálj egy függvényt, mely egy listában egy megadott érték előtti és utáni darabot visszaadja (a második rész tartalmazza a "vágás" karakterét)!

```
breakOn :: Eq a => a -> [a] -> ([a], [a])
```

Tesztek:

```
breakOn ' ' "haskell is cool" == ("haskell", " is cool")
breakOn ' ' "is cool" == ("is", " cool")
breakOn '/' "haskell/gyak/gyak.hs" == ("haskell", "/gyak/gyak.hs")
```

Definiálj egy függvényt, mely adott érték mentén darabol egy listát! Tipp: használd a "breakOn" függvényt az előző feladatból!

```
splitOn :: Eq a => a -> [a] -> [[a]]
```

Tesztek:

```
splitOn ' ' "haskell is cool" == ["haskell", "is", "cool"]
splitOn '/' "haskell/gyak/gyak.hs" == ["haskell", "gyak", "gyak.hs"]
splitOn '/' "haskell" == ["haskell"]
splitOn '/' "" == []
```
