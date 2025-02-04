-- standard precedence operations
main::IO()
main=do
    let result1=(50*100)-4999
    let result2=50*100-4999
    let result3=50*(100-4999)
    putStrLn("(50*100)-4999=" ++ show result1)
    putStrLn("50*100-4999=" ++ show result2)
    putStrLn("50*(100-4999)=" ++ show result3) 

