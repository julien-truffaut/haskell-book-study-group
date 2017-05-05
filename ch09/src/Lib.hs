module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


-- Data.Char
-- These first few exercises are straightforward but will introduce you
-- to some new library functions and review some of what we’ve learned so far.
-- Some of the functions we will use here are not standard in Prelude and
-- so have to be imported from a module called Data.Char. You may do so in
-- a source file (recommended) or at the Prelude prompt with the same phrase:
-- import Data.Char (write that at the top of your source file). This brings
-- into scope a bunch of new standard functions we can play with that operate
-- on Char and String types.

-- 1. Query the types of isUpper and toUpper.
-- 2. Given the following behaviors, which would we use to write a function
-- that filters all the uppercase letters out of a String? Write that function
-- such that, given the input “HbEfLrLxO,” your function will return “HELLO.”

-- Prelude Data.Char> isUpper 'J'
-- True
-- Prelude Data.Char> toUpper 'j'
-- 'J'

-- 3. Write a function that will capitalize the first letter of a String and
-- return the entire String. For example, if given the argument “julie,” it
-- will return “Julie.”

-- 4. Now make a new version of that function that is recursive such that if
-- you give it the input “woot” it will holler back at you “WOOT.” The type
-- signature won’t change, but you will want to add a base case.

-- 5. To do the final exercise in this section, we’ll need another standard
-- function for lists called head. Query the type of head and experiment with
-- it to see what it does. Now write a function that will capitalize the first
--letter of a String and return only that letter as the result.

-- 6. Cool. Good work. Now rewrite it as a composed function. Then, for fun,
-- rewrite it pointfree.


-- direct recursion, not using (&&)
-- myAnd :: [Bool] -> Bool
-- myAnd [] = True
-- myAnd (x:xs) = if x == False then False else myAnd xs

-- direct recursion, using (&&)
myAnd :: [Bool] -> Bool myAnd [] = True
myAnd (x:xs) = x && myAnd xs

-- 1. myOr returns True if any Bool in the list is True.
myOr :: [Bool] -> Bool
myOr = undefined

-- 2. myAny returns True if a -> Bool applied to any of the values in the list returns True.
myAny :: (a -> Bool) -> [a] -> Bool
myAny = undefined

-- Example for validating myAny:
-- Prelude> myAny even [1, 3, 5]
-- False
-- Prelude> myAny odd [1, 3, 5]
-- True


-- 3. Afer you write the recursive myElem, write another version that uses any.

myElem :: Eq a => a -> [a] -> Bool
myElem = undefined

--  Prelude> myElem 1 [1..10]
--  True
--  Prelude> myElem 1 [2..10]
--  False

-- 4. Implement myReverse.
myReverse :: [a] -> [a]
myReverse = undefined

--  Prelude> myReverse "blah"
--  "halb"
--  Prelude> myReverse [1..5]
--  [5,4,3,2,1]

-- 5. squish flattens a list of lists into a list
squish :: [[a]] -> [a]
squish = undefined

-- 6. squishMap maps a function over a list and concatenates
-- the results.
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap = undefined

-- Prelude> squishMap (\x -> [1, x, 3]) [2]
-- [1,2,3]
-- Prelude> squishMap (\x -> "WO "++[x]++" HOO ") "123"
-- "WO 1 HOO WO 2 HOO WO 3 HOO

-- 7. squishAgain flattens a list of lists into a list.
-- This time reuse the squishMap function.
squishAgain :: [[a]] -> [a]
squishAgain = undefined


-- 8. myMaximumBy takes a comparison function and a list and returns
-- the greatest element of the list based on the last value that the
-- comparison returned GT for.

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = undefined

--  Prelude> myMaximumBy (\_ _ -> GT) [1..10]
--  1
--  Prelude> myMaximumBy (\_ _ -> LT) [1..10]
--  10
--  Prelude> myMaximumBy compare [1..10]
--  10

-- 9. myMinimumBy takes a comparison function and a list and returns the
-- least element of the list based on the last value that the comparison
-- returned LT for.

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = undefined

-- Prelude> myMinimumBy (\_ _ -> GT) [1..10]
--  10
--  Prelude> myMinimumBy (\_ _ -> LT) [1..10]
--  1
--  Prelude> myMinimumBy compare [1..10]
--  1

-- Using the myMinimumBy and myMaximumBy functions, write your own versions
-- of maximum and minimum. If you have GHC 7.10 or newer, you’ll see a type
-- constructor that wants a Foldable instance instead of a list as has been
-- the case for many functions so far.
myMaximum :: (Ord a) => [a] -> a
myMaximum = undefined

myMinimum :: (Ord a) => [a] -> a
myMinimum = undefined
