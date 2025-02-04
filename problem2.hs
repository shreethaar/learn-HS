-- Find the last-but-one (or second-last) element of a list
myButLast::[a]->a
myButLast [x,_]=x
myButLast (_:xs)=myButLast xs
