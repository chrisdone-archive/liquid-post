-- |

module CheckThatData where

import DivByZero

calc :: IO ()
calc = do
  putStrLn "Enter numerator"
  n <- readLn
  putStrLn "Enter denominator"
  d <- readLn
  if d > 0
     then putStrLn ("Result = " ++ show (safeDiv n d))
     else putStrLn "It's zero!"
