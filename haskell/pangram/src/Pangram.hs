module Pangram (isPangram) where

import Data.Char ( toLower )
import qualified Data.Set as Set

isPangram :: String -> Bool
isPangram text =
    ( Set.fromList 
    . filter (`elem` alphabet) 
    . map toLower
    ) text == alphabet
    where alphabet = Set.fromList ['a'..'z']

