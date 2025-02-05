isPrime::Int->Bool
isPrime n
    | n<=1=False
    | n==2=True
    | even n=False
    | otherwise=null[x|x <- [3,5..isqrt n], n `mod` x ==0]
    where isqrt=floor.sqrt.fromIntegral

processWithIndex::[Int]->[Int] 
processWithIndex xs = [x+i|(x,i)<-zip xs [0..]]

countAboveAverage::[Int]->Int
countAboveAverage[]=0
countAboveAverage xs=length[x|x<-xs,x>avg]
    where avg=sum xs `div` length xs
countPrimes::[Int]->Int
countPrimes xs=length $ filter isPrime xs

analyzeSeq :: [Int] -> Bool
analyzeSeq [] = False
analyzeSeq xs = 
    let processed = processWithIndex xs
        aboveAvgCount = countAboveAverage processed
        primeCount = countPrimes processed
    in aboveAvgCount == primeCount && sum processed > product processed

main::IO()
main=do 
    print $ analyzeSeq [1,2,3,4]      
    print $ analyzeSeq [1,1,1]        
    print $ analyzeSeq [2,3,4]        
    print $ analyzeSeq []             
    print $ analyzeSeq [5,5,5]     
    print $ analyzeSeq [1,2]          
