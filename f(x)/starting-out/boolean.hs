-- boolean operation
main::IO()
main=do
    let andResul1=True&&False
    let andResult2=True&&True
    let orResult1=False||True
    let notResult1=not False
    let notResult2=not (True && True)

    let eqResult1=5==5
    let eqResult2=1==0
    let neqResult1=5/=5
    let neqResult2=5/=4
    let strEqResult="hello"=="hello"
    let strNeqResult"hello"/="notHello"

    putStrLn ("True && False = " ++ show andResult1)
    putStrLn ("True && True = " ++ show andResult2)
    putStrLn ("False || True = " ++ show orResult)
    putStrLn ("not False = " ++ show notResult1)
    putStrLn ("not (True && True) = " ++ show notResult2)

    putStrLn ("5 == 5 = " ++ show eqResult1)
    putStrLn ("1 == 0 = " ++ show eqResult2)
    putStrLn ("5 /= 5 = " ++ show neqResult1)
    putStrLn ("5 /= 4 = " ++ show neqResult2)
    putStrLn ("\"hello\" == \"hello\" = " ++ show strEqResult)
    putStrLn ("\"hello\" /= \"notHello\" = " ++ show strNeqResult)
