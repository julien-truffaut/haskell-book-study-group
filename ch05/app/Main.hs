module Main where

import Lib

main :: IO ()
main = someFunc


-- Multiple choice

-- 1. A value of type [a] is
--   a) a list of alphabetic characters
--   b) a list of lists
--   c) a list whose elements are all of some type 𝑎
--   d) a list whose elements are all of different types



-- 2. A function of type [[a]] -> [a] could
--   a) take a list of strings as an argument
--   b) transform a character into a string
--   c) transform a string in to a list of strings
--   d) take two arguments




-- 3. A function of type [a] -> Int -> a
--   a) takes one argument
--   b) returns one element of type 𝑎 from a list
--   c) must return an Int value
--   d) is completely fictional




-- 4. A function of type (a, b) -> a
--   a) takes a list argument and returns a Char value
--   b) has zero arguments
--   c) takes a tuple argument and returns the first value
--   d) requires that 𝑎 and 𝑏 be of different types



-- Determine the type

-- 1. All function applications return a value. Determine the value returned by these function applications and the type of that value.
--   a) (* 9) 6
--   b) head [(0,"doge"),(1,"kitteh")]
--   c) head [(0 :: Integer ,"doge"),(1,"kitteh")] d) if False then True else False
--   e) length [1, 2, 3, 4, 5]
--   f) (length [1, 2, 3, 4]) > (length "TACOCAT")


-- 2. Given
--   x = 5
--   y = x + 5
--   w = y * 10
-- What is the type of w?


-- 3. Given
--   x = 5
--   y = x + 5
--   z y = y * 10
-- What is the type of z?


-- 4. Given
--   x = 5
--   y = x + 5
--   f = 4 / y
-- What is the type of f?


-- 5. Given
--   x = "Julie"
--   y = " <3 "
--   z = "Haskell"
--   f = x ++ y ++ z
-- What is the type of f?



-- Does it compile?
-- For each set of expressions, figure out which expression, if any, causes the compiler to squawk at you (n.b. we do not mean literal squawking) and why. Fix it if you can.

-- 1.
-- bigNum = (^) 5 $ 10
-- wahoo = bigNum $ 10


-- 2.
-- x = print
-- y = print "woohoo!"
-- z = x "hello world"


-- 3.
-- a = (+) b=5
-- c = b 10
-- d = c 200


-- 4.
-- a = 12 + b
-- b = 10000 * c


-- Type variable or specific type constructor?

-- 1. You will be shown a type declaration, and you should categorize each type.
-- The choices are a fully polymorphic type variable, constrained polymorphic
-- type variable, or concrete type con- structor.

-- f :: Num a => a -> b -> Int -> Int
--              [0]  [1]   [2]    [3]

-- Here, the answer would be: constrained polymorphic
-- (Num) ([0]), fully polymorphic ([1]), and concrete ([2] and [3]).


-- 2.
-- f :: zed -> Zed -> Blah



-- 3.
-- f :: Enum b => a -> b -> C


-- 4.
-- f :: f -> g -> C



-- Write a type signature

-- For the following expressions, please add a type signature. You should
-- be able to rely on GHCi type inference to check your work, although you
-- might not have precisely the same answer as GHCi gives (due to polymorphism,
-- etc).

-- 1. 
-- functionH ::
functionH (x:_) = x


-- 2.
-- functionC ::
functionC x y = if (x > y) then True else False


-- 3.
-- functionS ::
functionS (x, y) = y



-- Given a type, write the function
-- You will be shown a type and a function that needs to be written.
-- Use the information the type provides to determine what the function should do.
-- We’ll also tell you how many ways there are to write the function.
-- (Syntactically different but semantically equivalent implementations are
-- not counted as being different).

-- 1. There is only one implementation that typechecks.
i :: a -> a
i = undefined


-- 2. There is only one version that works.
c :: a -> b -> a
c = undefined


-- 3. Given alpha equivalence are c” and c (see above) the same thing?
c'' :: b -> a -> b
c'' = undefined


-- 4. Only one version that works.
c' :: a -> b -> b
c' = undefined


-- 5. There are multiple possibilities, at least two of which you’ve seen in previous chapters.
r :: [a] -> [a]
r = undefined


-- 6. Only one version that will typecheck.
co :: (b -> c) -> (a -> b) -> (a -> c)
co = undefined


-- 7. One version will typecheck.
a :: (a -> c) -> a -> a
a = undefined


-- 8. One version will typecheck.
a' :: (a -> b) -> a -> b
a' = undefined
