module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- Multiple choice
-- 1. Given the following datatype:
data Weekday =
        Monday
      | Tuesday
      | Wednesday
      | Thursday
      | Friday
        
-- we can say:
-- a) Weekday is a type with five data constructors
-- b) Weekday is a tree with five branches
-- c) Weekday is a product type
-- d) Weekday takes five arguments


-- 2. and with the same datatype definition in mind, what is the type of the following function, f?
f Friday = "Miller Time"

-- a) f :: [Char]
-- b) f :: String -> String
-- c) f :: Weekday -> String
-- d) f :: Day -> Beer


-- 3. Types defined with the data keyword
-- a) must have at least one argument
-- b) must begin with a capital letter
-- c) must be polymorphic
-- d) cannot be imported from modules


-- 4. The function
g xs = xs !! (length xs - 1)

-- a) is recursive and may not terminate
-- b) delivers the head of xs
-- c) delivers the final element of xs
-- d) has the same type as xs

-- Ciphers
-- In the Lists chapter, you wrote a Caesar cipher. Now, we want to expand on that idea by writing a Vigenère cipher.

-- A Vigenère cipher is another substitution cipher, based on a Caesar cipher, but it uses a series of Caesar ciphers for polyalphabetic substitution. The substitution for each letter in the plaintext is determined by a fixed keyword. So, for example, if you want to encode the message “meet at dawn,” the first step is to pick a keyword that will determine which Caesar cipher to use. We’ll use the keyword “ALLY” here. You repeat the keyword for as many characters as there are in your original message:
-- MEET AT DAWN
-- ALLY AL LYAL
-- Now the number of rightward shi s to make to encode each character is set by the character of the keyword that lines up with it. The ’A’ means a shi  of 0, so the initial M will remain M. But the ’L’ for our second character sets a rightward shi  of 11, so ’E’ becomes ’P’. And so on, so “meet at dawn” encoded with the keyword “ALLY” becomes “MPPR AE OYWY.” Like the Caesar cipher, you can find all kinds of resources to help you understand the cipher and also many examples written in Haskell. Consider using a combination of chr,ord, and mod again, possibly very similar to what you used for writing the original Caesar cipher.

-- As-patterns
-- “As-patterns” in Haskell are a nifty way to be able to pattern match on part of something and still refer to the entire original value. Some examples:

foo :: Show a => (a, b) -> IO (a, b)
foo t@(a, _) = do
  print a
  return t

-- Here we pattern-matched on a tuple so we could get at the first value for printing, but used the @ symbol to introduce a binding named t in order to refer to the whole tuple rather than just a part.
-- Prelude> foo (1, 2)
-- 1
-- (1,2)

-- We can use as-patterns with pattern matching on arbitrary data constructors, which includes lists:

doubleUp :: [a] -> [a]
doubleUp [] = []
doubleUp xs@(x:_) = x : xs

-- Prelude> doubleUp []
-- []
-- Prelude> doubleUp [1]
-- [1,1]
-- Prelude> doubleUp [1, 2]
-- [1,1,2]
-- Prelude> doubleUp [1, 2, 3]
-- [1,1,2,3]

-- Use as-patterns in implementing the following functions:
-- 1. This should return True if (and only if) all the values in the first list appear in the second list, though they need not be contiguous.

isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
isSubsequenceOf = undefined

-- Prelude> isSubsequenceOf "blah" "blahwoot"
-- True
-- Prelude> isSubsequenceOf "blah" "wootblah"
-- True
-- Prelude> isSubsequenceOf "blah” "wboloath"
-- True
-- Prelude> isSubsequenceOf "blah" "wootbla"
-- False

-- 2. Split a sentence into words, then tuple each word with the capitalized form of each.

capitalizeWords :: String -> [(String, String)]
capitalizeWords = undefined

-- Prelude> capitalizeWords "hello world"
-- [("hello", "Hello"), ("world", "World")]

-- Language exercises
-- 1. Write a function that capitalizes a word.

capitalizeWord :: String -> String
capitalizeWord = undefined

-- 2. Write a function that capitalizes sentences in a para- graph. Recognize when a new sentence has begun by checking for periods. Reuse the capitalizeWord func- tion.

capitalizeParagraph :: String -> String
capitalizeParagraph = undefined

-- Prelude> capitalizeParagraph "blah. woot ha."
-- "Blah. Woot ha."

-- Phone exercise
-- This exercise by geophf originally for HaskellADay. Thank you for letting us use this exercise!

-- Remember old-fashioned phone inputs for writing text where you had to press a button multiple times to get differ- ent letters to come up? You may still have to do this when you try to search for a movie to watch using your televi- sion remote control. You’re going to write code to translate sequences of button presses into strings and vice versa. So! Here is the layout of the phone: (check book)

-- Where star (*) gives you capitalization of the letter you’re writing to your friends, and 0 is your space bar. To represent the digit itself, you press that digit once more than the letters it represents. If you press a button one more than than is required to type the digit, it wraps around to the first letter. For example,
-- 2     -> 'A'
-- 22    -> 'B'
-- 222   -> 'C'
-- 2222  -> '2'
-- 22222 -> 'A'

-- 1. Create a data structure that captures the phone layout above. The data structure should be able to express enough of how the layout works that you can use it to dictate the behavior of the functions in the following exercises.

-- fill in the rest.
data DaPhone = DaPhone

-- 2. Convertthefollowingconversationsintothekeypresses required to express them. We’re going to suggest types and functions to fill in order to accomplish the goal, but they’re not obligatory. If you want to do it differently...you do you.

convo :: [String]
convo =
  ["Wanna play 20 questions",
   "Ya",
   "U 1st haha",
   "Lol ok. Have u ever tasted alcohol lol",
   "Lol ya",
   "Wow ur cool haha. Ur turn",
   "Ok. Do u think I am pretty Lol",
   "Lol ya",
   "Haha thanks just making sure rofl ur turn"]

-- validButtons = "1234567890*#"
type Digit = Char

-- Valid presses: 1 and up
type Presses = Int


reverseTaps :: DaPhone -> Char -> [(Digit, Presses)]
reverseTaps = undefined

-- assuming the default phone definition
-- 'a' -> ('2', 1)
-- 'A' -> [('*', 1), ('2', 1)]
cellPhonesDead :: DaPhone -> String -> [(Digit, Presses)]
cellPhonesDead = undefined


-- 3. How many times do digits need to be pressed for each message?
fingerTaps :: [(Digit, Presses)] -> Presses
fingerTaps = undefined

-- 4. What was the most popular letter for each message? What was its cost? You’ll want to combine reverseTapsand fingerTaps to figure out what it cost in taps. rever- seTaps is a list because you need to press a different button in order to get capitals.
mostPopularLetter :: String -> Char
mostPopularLetter = undefined


-- 5. What was the most popular letter overall? What was the most popular word?
coolestLtr :: [String] -> Char
coolestLtr = undefined

coolestWord :: [String] -> String
coolestWord = undefined


-- Hutton’s Razor
-- Hutton’s Razor10 is a very simple expression language that expresses integer literals and addition of values in that ex- pression language. The “trick” to it is that it’s recursive and the two expressions you’re summing together could be lit- erals or themselves further addition operations. This sort of datatype is stereotypical of expression languages used to motivate ideas in research papers and functional pearls. Evaluating or folding a datatype is also in some sense what you’re doing most of the time while programming anyway.

-- 1. Your first task is to write the “eval” function which re- duces an expression to a final sum.

data Expr = Lit Integer | Add Expr Expr

eval :: Expr -> Integer
eval = error "do it to it"

-- Example of expected output:
--  Prelude> eval (Add (Lit 1) (Lit 9001))
--  9002

-- 2. Write a printer for the expressions.
printExpr :: Expr -> String
printExpr = undefined

-- Expected output:
-- Prelude> printExpr (Add (Lit 1) (Lit 9001))
-- "1 + 9001"
-- Prelude> let a1 = Add (Lit 9001) (Lit 1)
-- Prelude> let a2 = Add a1 (Lit 20001)
-- Prelude> let a3 = Add (Lit 1) a2
-- Prelude> printExpr a3
-- "1 + 9001 + 1 + 20001"
  
