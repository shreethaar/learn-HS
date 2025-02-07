naturals::[Integer]
naturals=[1..]
first10Naturals::[Integer] 
first10Naturals=take 10 naturals 
first20Evens::[Integer] 
first20Evens=take 20 (filter even naturals) 
main::IO ()
main = do 
    putStrLn "First 10 natural numbers:"
    print first10Naturals
    putStrLn "\nFirst 20 even natural numbers:"
    print first20Evens
