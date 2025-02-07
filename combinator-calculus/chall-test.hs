{-# LANGUAGE DeriveGeneric #-}

import Data.Char (ord)
import Data.Digest.Pure.SHA (sha256, showDigest)
import Data.ByteString.Lazy.Char8 (pack)
import GHC.Generics (Generic)
import Control.DeepSeq (NFData, deepseq)

-- Define SKI combinators
data SKI = S | K | I | App SKI SKI
    deriving (Show, Eq, Generic)

instance NFData SKI

-- Convert an integer to a unique SKI combinator representation
intToSKI :: Int -> SKI
intToSKI 0 = K
intToSKI 1 = S
intToSKI n = App (intToSKI (n `div` 2)) (if odd n then S else K)

-- Encode a character as an SKI expression
charToSKI :: Char -> SKI
charToSKI c = App (App S K) (intToSKI (ord c))

-- Encode an entire string as an SKI expression
stringToSKI :: String -> SKI
stringToSKI = foldl App I . map charToSKI

-- Compute SHA-256 hash of an SKI expression
hashSKI :: SKI -> String
hashSKI skiExpr = deepseq skiExpr (showDigest . sha256 . pack . show $ skiExpr)

-- The hidden correct string
secretString :: String
secretString = "hAskeLL4FuNN"

-- The SKI representation of the secret string
secretSKI :: SKI
secretSKI = stringToSKI secretString

-- Precompute the hash of the secret SKI expression
secretHash :: String
secretHash = hashSKI secretSKI

-- Verify user input by encoding it into SKI and checking its hash
verifyInput :: String -> Bool
verifyInput input = hashSKI (stringToSKI input) == secretHash

-- Challenge entry point
main :: IO ()
main = do
    putStrLn "Enter the correct string:"
    userInput <- getLine
    if verifyInput userInput
        then putStrLn "Correct! You solved the challenge!"
        else putStrLn "Incorrect! Try again."
