-- |

module Tree where

import Impossible
data List a = Nil | Cons a (List a)

-- {-@ measure len @-}
-- len :: List a -> Int
-- len Nil        = 0
-- len (Cons _ xs) = 1 + len xs

-- {-@ car :: {x:List a | len x > 0} -> a @-}
-- car (Cons x _) = x

-- demo = car (Cons 5 Nil)
