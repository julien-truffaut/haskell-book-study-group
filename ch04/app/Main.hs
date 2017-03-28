module Main where

import Lib

main :: IO ()
main = someFunc





-- length is a function that takes a list and returns a result that tells how many items are in the list.

-- 1. Given the definition of length above, what would the type signature be? How many arguments, of what type does it take? What is the type of the result it evaluates to?



-- 2. What are the results of the following expressions?
-- a) length [1, 2, 3, 4, 5]
-- b) length [(1, 2), (2, 3), (3, 4)]
-- c) length allAwesome
-- d) length (concat allAwesome)



-- 3. Given what we know about numeric types and the type signature of length, look at these two expressions. One works and one returns an error. Determine which will return an error and why. (n.b., If you’re checking the type signature of length in GHC 7.10, you will find Foldable t => t a representing [a], as with concat in the previous chapter. Again, consider Foldable t to represent a list here, even though list is only one of the possible types. We will explain it in detail later.)



-- Prelude> 6 / 3
-- and
-- Prelude> 6 / length [1, 2, 3]
-- 4. How can you fix the broken code from the preceding exercise using a different division function/operator? 
