import Data.Function (on)

sumOfSquares::Num a==>a->a->a
sumOfSquares=(+) `on` (^2)

main::IO()
main=do
    print(sumOfSquares 3 4) 
    print(sumOfSquares 5 12)
