-- |

module Numbers where

{-@ type Zero = {v:Int | v = 0} @-}

{-@ zero :: Zero @-}
zero :: Int
zero     =  0

{-@ type Nat = {v:Int | 0 <= v} @-}

{-@ nats :: [Nat]               @-}
nats :: [Int]
nats     =  [0, 1, 2, 3]
