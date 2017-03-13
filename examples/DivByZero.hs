{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE QuasiQuotes #-}
-- |

module DivByZero where

import LiquidHaskell

[lq| divide :: Int -> { d : Int | d /= 0 } -> Int |]
divide x n = x `div` n

bad = do
  d <- readLn
  if d /= 0
     then print (divide 10 d)
     else putStrLn "Please try again."

{-@ impossible :: {v:_ | false} -> a @-}
impossible msg = error msg
