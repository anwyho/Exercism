module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year 
  | isDivisibleBy 400 = True
  | isDivisibleBy 100 = False 
  | isDivisibleBy 4 = True
  | otherwise = False
  where isDivisibleBy factor = mod year factor == 0
