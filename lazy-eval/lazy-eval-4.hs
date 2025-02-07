import Data.List
import Data.Char
import Data.ByteString.Base64 (encode)
import qualified Data.ByteString.Char8 as B

-- Function to check the conditions
checkString :: String -> Bool
checkString str
    | length str < 8 = False  -- Ensure the string has at least 8 characters
    | otherwise =
        let a = ord (str !! 0)
            b = ord (str !! 1)
            c = ord (str !! 2)
            lastFive = drop (length str - 5) str
        in  a == b && c == a + 1 && encodeBase64 lastFive == "X2ZVTk4="

-- Function to encode a string to Base64
encodeBase64 :: String -> String
encodeBase64 = B.unpack . encode . B.pack

main :: IO ()
main = do
    putStrLn "Enter a string:"
    input <- getLine
    if checkString input
        then putStrLn "Valid string!"
        else putStrLn "Invalid string!"

