import Data.Char (ord)

data SKI = S | K | I | App SKI SKI deriving (Eq, Show)

-- Encodes a character into an SKI combinator expression
encodeChar :: Char -> SKI
encodeChar c = App (App S K) (App K (buildTerm n))
  where
    n = ord c - 65
    buildTerm 0 = App K K  -- A
    buildTerm 1 = App K S  -- B
    buildTerm 2 = App S K  -- C
    buildTerm 3 = App S S  -- D
    buildTerm x = let (q, r) = (x - 4) `divMod` 4
                      inner = buildTerm r
                  in App (if q `mod` 2 == 0 then K else S) inner

-- Example usage
main :: IO ()
main = do
    putStrLn "A:" >> print (encodeChar 'A')  -- App (App S K) (App K (App K K))
    putStrLn "B:" >> print (encodeChar 'B')  -- App (App S K) (App K (App K S))
    putStrLn "C:" >> print (encodeChar 'C')  -- App (App S K) (App K (App S K))
    putStrLn "D:" >> print (encodeChar 'D')  -- App (App S K) (App K (App S S))
    putStrLn "E:" >> print (encodeChar 'E')  -- App (App S K) (App K (App K (App K K)))
    putStrLn "F:" >> print(encodeChar 'F')
