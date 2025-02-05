-- intro to list

lostNumbers = [4,8,15,16,23,42]
example1=[1,2,3,4] ++ [9,10,11,12]
example2="hello" ++ " " ++ "world"
example3=['w','o'] ++ ['o','t']
example4='A':" SMALL CAT"
example5= 5 : [1,2,3,4,5]
example6="Steve Buscemi" !! 6 
example7=[9.4,33.2,96.2,11.2,23.25] !! 1 
b=[[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
example8=b ++ [[1,1,1,1]] 
example9=[6,6,6]:b 
example10=b !! 2 
compare1=[3,2,1]>[2,1,0]
compare2=[3,4,2]==[3,4,2]
exampleHead=head[5,4,3,2,1] 
exampleTail=tail[5,4,3,2,1] 
exampleLast=last[5,4,3,2,1] 
exampleInit=init[5,4,3,2,1] 
exampleLength=length[5,4,3,2,1] 
exampleNull1=null[1,2,3] 
exampleNull2=null[] 
exampleReverse=reverse[5,4,3,2,1]
exampleTake=take 3 [5,4,3,2,1] 
exampleDrop=drop 3 [8,4,2,1,5,6] 
exampleMin=minimum[8,4,2,1,5,6] 
exampleMax=maximum[1,9,2,3,4]
exampleSum=sum[5,2,1,6,3,2,5,7]
exampleProduct=product[6,2,1,2] 
exampleElem1=4 `elem` [3,4,5,6] 
exampleElem2=10 `elem` [3,4,5,6] 

main::IO()
main=do 
    print lostNumbers
    print example1
    print example2
    print example3
    print example4
    print example5
    print example6
    print example7
    print example8
    print example9
    print example10
    print compare1
    print compare2
    print exampleHead
    print exampleTail
    print exampleLast
    print exampleInit
    print exampleLength
    print exampleNull1
    print exampleNull2
    print exampleReverse
    print exampleTake
    print exampleDrop
    print exampleMin
    print exampleMax
    print exampleSum
    print exampleProduct
    print exampleElem1
    print exampleElem2

