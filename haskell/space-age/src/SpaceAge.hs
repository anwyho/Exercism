module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury | Venus | Earth | Mars | Jupiter | Saturn | Uranus | Neptune

-- Not my best work, but it works and it's 1am. 
ageOn :: Planet -> Float -> Float
ageOn planet seconds = case planet of
    Mercury -> yearsOldInSecondsOfOrbitalPeriod seconds 0.2408467
    Venus   -> yearsOldInSecondsOfOrbitalPeriod seconds 0.61519726
    Earth   -> yearsOldInSecondsOfOrbitalPeriod seconds 1.0000
    Mars    -> yearsOldInSecondsOfOrbitalPeriod seconds 1.8808158
    Jupiter -> yearsOldInSecondsOfOrbitalPeriod seconds 11.862615
    Saturn  -> yearsOldInSecondsOfOrbitalPeriod seconds 29.447498
    Uranus  -> yearsOldInSecondsOfOrbitalPeriod seconds 84.016846
    Neptune -> yearsOldInSecondsOfOrbitalPeriod seconds 164.79132
    where yearsOldInSecondsOfOrbitalPeriod s ratio = s / 31557600 / ratio
    