import Data.Char
import Data.List
import Data.Foldable

stretch :: Num a => (a, a, a) -> a -> (a, a, a)
stretch (q, y, w)  x = (x*q, y*x, w*x)

countLetters :: String -> Int
countLetters myString = length (filter isEnglish myString)

isEnglish :: Char -> Bool
isEnglish x = ( x>= 'a' && x <= 'z') || (x>= 'A' && x <= 'Z')

distance :: (Int, Int) -> Double
distance (x, y) = sqrt ( (fromIntegral x)^^2 + (fromIntegral y)^^2 )

