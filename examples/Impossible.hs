-- |

module Impossible where

{-@ impossible :: {v:_ | false} -> a @-}
impossible msg = error msg
