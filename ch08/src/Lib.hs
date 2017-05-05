module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- Review of types

-- 1. Whatisthetypeof[[True, False], [True, True], [False, True]]?
-- a) Bool
-- b) mostly True
-- c) [a]
-- d) [[Bool]]

-- 2. Which of the following has the same type as [[True, False], [True, True], [False, True]]?
-- a) [(True, False), (True, True), (False, True)]
-- b) [[3 == 3], [6 > 5], [3 < 4]]
-- c) [3 == 3, 6 > 5, 3 < 4]
-- d) ["Bool", "more Bool", "Booly Bool!"]

-- 3. For the following function
-- func :: [a] -> [a] -> [a] func x y = x ++ y
-- which of the following is true?
-- a) xandymustbeofthesametype
-- b) x and y must both be lists
-- c) ifxisaStringthenymustbeaString
-- d) all of the above

-- 4. For the func code above, which is a valid application of func to both of its arguments?
-- a) func "Hello World"
-- b) func "Hello" "World"
-- c) func [1, 2, 3] "a, b, c"
-- d) func ["Hello", "World"]


-- Reviewing currying

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

-- fill in the types
flippy = flip cattyConny
appedCatty = cattyConny "woops"
frappe = flippy "haha"

-- 1. What is the value of appedCatty "woohoo!" ? Try to determine
-- the answer for yourself, then test in the REPL.
-- 2. frappe "1"
-- 3. frappe (appedCatty "2")
-- 4. appedCatty (frappe "blue")
-- 5. cattyConny (frappe "pink")
--               (cattyConny "green" (appedCatty "blue"))
-- 6. cattyConny (flippy "Pugs" "are") "awesome"


-- Recursion
-- 1. Write out the steps for reducing dividedBy 15 2 to its final
-- answer according to the Haskell code.
-- 2. Write a function that recursively sums all numbers from 1 to n,
-- n being the argument. So that if n was 5, you’dadd 1+2+3+4+5 to get 15.
-- The types hould be (Eq a, Num a) => a -> a.
-- 3. Write a function that multiplies two integral numbers using recursive
-- summation. The type should be (Integral a) => a -> a -> a.

-- Fixing dividedBy
-- Our dividedBy function wasn’t quite ideal. For one thing. It was a partial
-- function and doesn’t return a result (bottom) when given a divisor that is 0 or less.
-- Using the pre-existing div function we can see how negative numbers should be handled:

-- Prelude> div 10 2
-- 5
-- Prelude> div 10 (-2)
-- -5
-- Prelude> div (-10) (-2)
-- 5
-- Prelude> div (-10) (2)
-- 5

-- The next issue is how to handle zero. Zero is undefined for division in math, so really
-- we ought to use a datatype that lets us say there was no sensible result when the user
-- divides by zero. If you need inspiration, consider using the following datatype to handle this.

data DividedResult = Result Integer | DividedByZero

-- McCarthy 91 function
-- We’re going to describe a function in English, then in math notation, then show
-- you what your function should return for some test inputs. Your task is
-- to write the function in Haskell.
-- The McCarthy 91 function yields 𝑥 − 10 when 𝑥 > 100 and 91 otherwise.
-- The function is recursive.

-- mc91 = undefined

-- You haven’t seen map yet, but all you need to know right now is that it applies a
-- function to each member of a list and returns the resulting list. It’ll be
-- explained in more detail in the next chapter.

-- Prelude> map mc91 [95..110]
-- [91,91,91,91,91,91,91,92,93,94,95,96,97,98,99,100]
