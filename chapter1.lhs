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

Now we call all three functions we just created

>example :: Int
>example = double (size -square (2 + 2))


Let's add a function that uses 'size' 'square' and 'double' in another fashion

>test :: Int
>test = double 320 - square (size - double 6)

Write a function that doubles its input and squares the result

>doublesquare :: Int -> Int
>doublesquare n = square(double(n))

Write a function that squares its input and the doubles the result

>squaredouble :: Int -> Int
>squaredouble n = double(square(n))
