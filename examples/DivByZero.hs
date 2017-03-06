-- |

module DivByZero where

{-@ safeDiv :: Int -> {d:Int | d>0} -> Int   @-}
safeDiv :: Int -> Int -> Int
safeDiv x n = x `div` n

{-@ impossible :: {v:_ | false} -> a @-}
impossible msg = error msg
