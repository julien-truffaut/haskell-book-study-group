module Cipher where

import Data.Char

-- We’ll still be using Data.Char for this next exercise. You should save these exercises in a module called Cipher be- cause we’ll be coming back to them in later chapters. You’ll A Caesar cipher is a simple substitution cipher, in which each letter is replaced by the letter that is a fixed number of places down the alphabet from it. You will find variations on this all over the place — you can shi  le ward or rightward, for any number of spaces. A rightward shi  of 3 means that ’A’ will become ’D’ and ’B’ will become ’E,’ for example. If you did a le ward shi  of 5, then ’a’ would become ’v’ and so forth.
-- Your goal in this exercise is to write a basic Caesar cipher that shi s rightward. You can start by having the number of spaces to shi  fixed, but it’s more challenging to write a cipher that allows you to vary the number of shi s so that you can encode your secret messages differently each time.
-- There are Caesar ciphers written in Haskell all over the internet, but to maxmize the likelihood that you can write yours without peeking at those, we’ll provide a couple of tips. When yours is working the way you want it to, we would encourage you to then look around and compare your solution to others out there.

-- *Cipher> :t chr chr :: Int -> Char
-- *Cipher> :t ord ord :: Char -> Int


--Using these functions is optional; there are other ways you can proceed with shi ing, but using chr and ord might sim- plify the process a bit.
-- You want your shi  to wrap back around to the beginning of the alphabet, so that if you have a rightward shi  of 3 from ’z,’ you end up back at ’c’ and not somewhere in the vast Unicode hinterlands. Depending on how you’ve set things up, this might be a bit tricky. Consider starting from a base character (e.g., ’a’) and using mod to ensure you’re only shi ing over the 26 standard characters of the English alphabet.

-- You should include an unCaesar function that will decipher
-- your text as well. In a later chapter, we will test it.
