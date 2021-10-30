module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury | Venus | Earth | Mars | Jupiter | Saturn | Uranus | Neptune

secondsToEarthYears :: Fractional a => a -> a
secondsToEarthYears s = s / 31557600

ageOn :: Fractional a => Planet -> a -> a
ageOn planet seconds = case planet of
    Mercury -> earthYears / 0.2408467
    Venus   -> earthYears / 0.61519726
    Earth   -> earthYears / 1.0000
    Mars    -> earthYears / 1.8808158
    Jupiter -> earthYears / 11.862615
    Saturn  -> earthYears / 29.447498
    Uranus  -> earthYears / 84.016846
    Neptune -> earthYears / 164.79132
    where earthYears = secondsToEarthYears seconds
    