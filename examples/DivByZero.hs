-- |

module DivByZero where

{-@ safeDiv :: Int -> {d:Int | d>0} -> Int   @-}
safeDiv :: Int -> Int -> Int
safeDiv _ 0 = impossible "divide-by-zero"
safeDiv x n = x `div` n

{-@ impossible :: {v:_ | false} -> a @-}
impossible msg = error msg
