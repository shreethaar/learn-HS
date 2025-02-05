--demonstrate basic haskell functions and usage
main::IO()
main=do
    putStrLn "Using succ:"
    print(succ 8)
    print(succ 9)
    print(succ 9 + max 5 4 + 1)
    print((succ 9) + (max 5 4) + 1)
    putStrLn "\nUsing min and max:"
    print(min 9 10)
    print(min 3.4 3.2)
    print(max 100 101)
