module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- Multiple choice


-- 1. The Eq class
--   a) includes all types in Haskell
--   b) is the same as the Ord class
--   c) makes equality tests possible
--   d) only includes numeric types


-- 2. The typeclass Ord
--   a) allows any two values to be compared
--   b) is a subclass of Eq
--   c) is a superclass of Eq
--   d) has no instance for Bool


-- 3. Suppose the typeclass Ord has an operator >. What is the type of >?
--   a) Ord a => a -> a -> Bool
--   b) Ord a => Int -> Bool
--   c) Ord a => a -> Char
--   d) Ord a => Char -> [Char]


-- 4. Inx = divMod 16 12
--   a) the type of 𝑥 is Integer
--   b) the value of 𝑥 is undecidable
--   c) the type of 𝑥 is a tuple
--   d) 𝑥 isequalto12 / 16


-- 5. The typeclass Integral includes
--   a) Int and Integer numbers
--   b) integral, real, and fractional numbers
--   c) Schrodinger’s cat
--   d) only positive numbers



-- Does it typecheck?
-- For this section of exercises, you’ll be practicing looking for type and typeclass errors.
-- For example, printIt will not work because functions like 𝑥 have no instance of Show, the typeclass that lets you convert things to Strings (usually for printing):

-- x :: Int -> Int
-- x blah = blah + 20

-- printIt :: IO ()
-- printIt = putStrLn (show x)


-- 1. Does the following code typecheck? If not, why not?

-- data Person = Person Bool
-- 
-- printPerson :: Person -> IO ()
-- printPerson person = putStrLn (show person)


-- 2. Does the following typecheck? If not, why not?

-- data Mood = Blah | Woot deriving Show
-- settleDown x = if x == Woot
--                  then Blah
--                  else x


-- 3. If you were able to get settleDown to typecheck:
--   a) What values are acceptable inputs to that function?
--   b) What will happen if you try to run settleDown 9? Why?
--   c) What will happen if you try to run Blah > Woot? Why?


-- 4. Does the following typecheck? If not, why not?

-- type Subject = String
-- type Verb = String
-- type Object = String
-- data Sentence = Sentence Subject Verb Object deriving (Eq, Show)

-- s1 = Sentence "dogs" "drool"
-- s2 = Sentence "Julie" "loves" "dogs"




-- Given a datatype declaration, what can we do?
-- Given the following datatype definitions:


data Rocks = Rocks String deriving (Eq, Show)
data Yeah = Yeah Bool deriving (Eq, Show)
data Papu = Papu Rocks Yeah deriving (Eq, Show)

-- Which of the following will typecheck? For the ones that don’t typecheck, why don’t they?

-- 1.
-- phew = Papu "chases" True


-- 2.
-- truth = Papu (Rocks "chomskydoz")
--              (Yeah True)


-- 3.
-- equalityForall :: Papu -> Papu -> Bool
-- equalityForall p p' = p == p'


-- 4.
-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'




-- Match the types
-- We’re going to give you two types and their implementations.
-- Then we’re going to ask you if you can substitute the second type for the first.
-- You can test this by typing the first declaration and its type into a file and
-- editing in the new one, loading to see if it fails.
-- Don’t just guess, test all your answers!


-- 1. For the following definition.
--   a) i :: Num a => a
--      i=1
--   b) Try replacing the type signature with the following:
--      i :: a


-- 2.
-- a) f :: Float
--    f = 1.0
-- b) f :: Num a => a


-- 3.
-- a) f :: Float
--    f = 1.0
-- b) f :: Fractional a => a


-- 4. Hint for the following: type :info RealFrac in your REPL
-- a) f :: Float f = 1.0
-- b) f :: RealFrac a => a

-- 5.
-- a) freud::a->a
--    freud x = x
-- b) freud :: Ord a => a -> a


-- 6.
-- a) freud'::a->a
--    freud' x = x
-- b) freud' :: Int -> Int


-- 7.
-- a) myX = 1 :: Int
--    sigmund :: Int -> Int
--    sigmund x = myX
-- b) sigmund :: a -> a


-- 8.
-- a) myX = 1 :: Int
--    sigmund' :: Int -> Int
--    sigmund' x = myX
-- b) sigmund' :: Num a => a -> a


-- 9. a)
-- You’ll need to import sort from Data.List.
--    jung :: Ord a => [a] -> a
--    jung xs = head (sort xs)
-- b) jung :: [Int] -> Int

-- 10.
-- a) young :: [Char] -> Char
--    young xs = head (sort xs)
-- b) young :: Ord a => [a] -> a


-- 11.
-- a) mySort :: [Char] -> [Char]
--    mySort = sort
--    signifier :: [Char] -> Char
--    signifier xs = head (mySort xs)
-- b) signifier :: Ord a => [a] -> a



-- Type-Kwon-Do
-- Round Two! Same rules apply — you’re trying to fill in terms (code)
-- which’ll fit the type. The idea with these exercises is that you’ll
-- derive the implementation from the type information.
-- You’ll probably need to use stuff from Prelude.

-- 1.
-- chk :: Eq b => (a -> b) -> a -> b -> Bool
-- chk = ???


-- 2.
-- Hint: use some arithmetic operation to
-- combine values of type 'b'. Pick one.
-- arith :: Num b => (a -> b) -> Integer -> a -> b
-- arith = ???
