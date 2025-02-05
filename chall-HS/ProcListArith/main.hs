processNum :: [Int] -> Bool
processNum [] = False
processNum xs = sum processed > product processed
    where processed = map processNumber xs  


processNumber :: Int -> Int
processNumber n 
    | n > 0 && even n = n * 2
    | n > 0 && odd n = n + 3
    | n < 0 && even n = n `div` 2
    | n < 0 && odd n = n - 1
    | otherwise = n                

main :: IO ()
main = do 
    print $ processNum [2, -4, 3, -1]
    print $ processNum [1, 2, 3, 4]        
    print $ processNum [-2, -3, -4]        
    print $ processNum []                   
    print $ processNum [5]                 
    print $ processNum [-10, 10]
