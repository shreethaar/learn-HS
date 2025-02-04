-- Find the K'th element of a list

elementAt::[a]->Int->a 
elementAt (x:xs) 0=x
elementAt (x:xs) n=elementAt xs (n-1)
elementAt [] _ = error "Index out of bounds"
