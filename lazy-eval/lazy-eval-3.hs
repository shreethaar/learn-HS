module LazyEvaluation where

import Data.List (isPrexiOf)
import Data.Char (ord,chr) 

fibs::[Integer]
fibs=0:1:zipwith(+)fibs(tail fibs) 

primes::[Integer] 
primes=sieve[2..]
    where
        sieve(p:xs)=p:sieve[x | x <- xs, x `mod` p /= 0]

alphabet::[Char] 
alphabet=cycle['a'..'z']

data Pattern = Numeric | Alpha | Mixed
    deriving (Show,Eq)

patternGen::Pattern->[String]
patternGen pattern = case pattern of 
    Numeric->map show [1..]
    Alpha->map(:[])alphabet
    Mixed->zipwith(\n c->c:show n)[1..] alphabet

data Tree a=Empty | Node a (Tree a)(Tree a) 
    deriving (Show,Eq)

fibTree :: Tree Integer
fibTree = buildTree 0
  where
    buildTree n = Node (fib n) (buildTree (n + 1)) (buildTree (n + 2))
    fib n = fibs !! fromIntegral n 


data TransformResult = TransformResult {
    value :: String,
    numericSum :: Integer,
    pattern :: Pattern
} deriving (Show)

transformSequence :: [TransformResult]
transformSequence = zipWith4 combine fibs primes alphabet (cycle [Numeric, Alpha, Mixed])
  where
    combine f p c pat = TransformResult {
        value = [c] ++ show f ++ "p" ++ show p,
        numericSum = f + p,
        pattern = pat
    }

findFirstMatch :: (TransformResult -> Bool) -> [TransformResult] -> Maybe TransformResult
findFirstMatch pred = find pred
  where
    find p (x:xs)
        | p x = Just x
        | otherwise = find p xs
    find _ [] = Nothing


main :: IO ()
main = do
    putStrLn "First 10 Fibonacci numbers:"
    print $ take 10 fibs
    putStrLn "\nFirst 10 prime numbers:"
    print $ take 10 primes
    putStrLn "\nFirst 10 pattern generations (Numeric):"
    print $ take 10 $ patternGen Numeric
    putStrLn "First 10 pattern generations (Alpha):"
    print $ take 10 $ patternGen Alpha
    putStrLn "First 10 pattern generations (Mixed):"
    print $ take 10 $ patternGen Mixed
    putStrLn "\nFirst 3 levels of Fibonacci tree:"
    print $ takeTree 3 fibTree
    putStrLn "\nFirst 5 complex transformations:"
    print $ take 5 transformSequence
    putStrLn "\nFirst result where numericSum > 100:"
    print $ findFirstMatch (\r -> numericSum r > 100) transformSequence
    putStrLn "\nFirst result starting with 'a' and having Numeric pattern:"
    print $ findFirstMatch (\r -> "a" `isPrefixOf` value r && pattern r == Numeric) transformSequence
takeTree :: Int -> Tree a -> Tree a
takeTree 0 _ = Empty
takeTree n Empty = Empty
takeTree n (Node x left right) = Node x (takeTree (n-1) left) (takeTree (n-1) right)
facts :: [Integer]
facts = scanl (*) 1 [1..]
combinedSequence :: [(Integer, Integer, Char)]
combinedSequence = zipWith3 (\f p c -> (f, p, c)) 
                           (filter even fibs) 
                           (filter (\x -> x `mod` 3 == 0) primes) 
                           (filter (`elem` "aeiou") (cycle ['a'..'z']))
testLazyEval :: IO ()
testLazyEval = do
    putStrLn "\nTesting Lazy Evaluation:"
    putStrLn "First 5 factorial numbers:"
    print $ take 5 facts
    
    putStrLn "\nFirst 5 combined sequences (even fibs, primes divisible by 3, vowels):"
    print $ take 5 combinedSequence
    
    putStrLn "\nFirst result where factorial > 1000:"
    print $ head $ filter (>1000) facts

