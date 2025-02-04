-- simple arithmetic
main::IO()
main=do 
    let sum=2+15
    let multiply=49*100
    let subtract=1892-1472
    let divide=5/2
    putStrLn("2+15=" ++ show sum) 
    putStrLn("49*100=" ++ show multiply)
    putStrLn("1892-1472=" ++ show subtract)
    putStrLn("5/2=" ++ show divide)

