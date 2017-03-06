-- |

module Date where

{-@ type Month = { x : Int | x > 0 && x < 12 } @-}
{-@ data Date = Date (Month) Int @-}
data Date = Date !Int !Int
