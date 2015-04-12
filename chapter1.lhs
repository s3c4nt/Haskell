s3c4nt
Chapter 1 Problems

The value size of an integer (Int), defined to be the sum of 12 and 13

>size :: Int
>size = 12 + 13

The function to square and integer

>square :: Int -> Int
>square n = n*n

The function to double an integer

>double :: Int -> Int
>double n = 2*n

Now we call all three function we just created

>example :: Int
>example = double (size -square (2 + 2))


 
