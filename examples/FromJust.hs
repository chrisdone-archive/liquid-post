-- |

module FromJust where

{-@ fromJust :: {v:Maybe a | (isJust v)} -> a @-}
fromJust :: Maybe a -> a
fromJust (Just a) = a
