s3c4nt
Chapter 1 Problems

Definition file for a module that lets you manipulate a picture 
(from 'The Craft of Funtional Programming' by Simon Thompson)
-An implementation of a type of rectangular pictures using lists of lists of characters.

***************************************************************

define the module Pictures

>module Pictures where
>type Picture = [[Char]]

Ascii style horse made from 16 X 12 rectangle

>horse :: Picture
>horse = ["........##..",
>          ".....##..#..",
>          "...##.....#.",
>          "..#.......#.",
>          "..#...#...#.",
>          "..#...###.#.",
>          ".#....#..##.",
>          "..#...#.....",
>          "...#...#....",
>          "....#..#....",
>          ".....#.#....",
>          "......##....",]

Ascii equivalent of a blank picture

>white :: Picture

>white = ["............",
>          "............",
>          "............",
>          "............",
>          "............",
>          "............",
>          "............",
>          "............",
>          "............",
>          "............",
>          "............",
>          "............",]

Pick up from here... 4/14/15
