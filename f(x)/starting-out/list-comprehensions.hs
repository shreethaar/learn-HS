module ListComprehensions where

firstTenEvens::[Int]
firstTenEvens=[x*2|x<-[1..10]]
evenGreaterThan12::[Int]
evenGreaterThan12=[x*2|x<-[1..10],x*2>=12] 
filteredNumbers :: [Int]
filteredNumbers = [x | x <- [50..100], x `mod` 7 == 3]
boomBangs :: [Int] -> [String]
boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]
filteredRange :: [Int]
filteredRange = [x | x <- [10..20], x /= 13, x /= 15, x /= 19]
productsList :: [Int]
productsList = [x * y | x <- [2,5,10], y <- [8,10,11]]
filteredProducts :: [Int]
filteredProducts = [x * y | x <- [2,5,10], y <- [8,10,11], x * y > 50]
nouns :: [String]
nouns = ["hobo", "frog", "pope"]
adjectives :: [String]
adjectives = ["lazy", "grouchy", "scheming"]
funnyCombinations :: [String]
funnyCombinations = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]
length' :: [a] -> Int
length' xs = sum [1 | _ <- xs]
removeNonUppercase :: String -> String
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]
filterEvenNested :: [[Int]] -> [[Int]]
filterEvenNested xxs = [[x | x <- xs, even x] | xs <- xxs]

