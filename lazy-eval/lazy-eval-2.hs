repeatChar::Char -> [Char]
repeatChar c = repeat c 

first5Chars::[Char] 
first5Chars=take 5 (repeatChar 'A')

repeatString::String->[String]
repeatString s = repeat s 

first3Strings::[String] 
first3String=take 3 (repeat "Haskell")

main::IO()
main=do
    putStrLn "First 5 characters from an infinite list of 'A':"
    print first5Chars
    putStrLn "\nFirst 3 strings from an infinite list of 'Haskell':"
    print first3Strings

