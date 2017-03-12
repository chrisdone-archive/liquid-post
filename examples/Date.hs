{-# LANGUAGE ScopedTypeVariables #-}

module Date where

data Date = Date { day :: !Int, month :: !Int, year :: !Int }
  deriving (Show)

{-@
makeDate :: day:{Int | day > 0 && day <= 31 }
         -> month:{Int | month > 0 && month <= 12 && (day < 31 || month = 04 || month = 06 || month = 09 || month = 11) }
         -> { year:Int | year > 0 &&
              (month /= 2 ||
               (day < 29 ||
                year mod 400 = 0 || (year mod 4 = 0 && year mod 100 /= 0)
               )
              )
            }
         -> Date
@-}
makeDate :: Int -> Int -> Int -> Date
makeDate d m y = Date d d y

works = makeDate 12 03 2017
works_leap_day = makeDate 29 02 2016
-- Does not compile:
-- invalid_nov_day = makeDate 11 31 2017
-- invalid_month = makeDate 12 15 2017
-- invalid_leap_day = makeDate 29 02 2017

main = do
  year :: Int <- readLn
  month :: Int <- readLn
  day :: Int <- readLn
  if year > 0
    then if month > 0 && month <= 12 && day < 31 || month == 04 || month == 06 || month == 09 || month == 11
           then if day > 0 && day <= 30 && valid_leap_days day month year
                  then print (makeDate day month year)
                  else error "Day is out of range!"
           else error "Month is out of range."
    else error "Year is out of range."
  where
    valid_leap_days day month year =
      (month /= 2 ||
       (day < 29 || mod year 400 == 0 || (mod year 4 == 0 && mod year 100 /= 0)))
