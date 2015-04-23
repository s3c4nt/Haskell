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

This should output the picture to the user's screen

> printPicture :: Picture -> IO ()
> printPicture =  putStr . concat . map (++"\n")

Transformations of pictures.
===============================

Reflection in a vertical mirror

> flipV :: Picture -> Picture
> flipV = map reverse 

Reflection in a horizontal mirror

> flipH :: Picture -> Picture
> flipH = reverse

Rotation through 180 degrees, by composing vertical and horizontal reflection. Can also be done by flipV.flipH. Also, note that we can prove equality of the two fucntions.

> rotate :: Picture -> Picture
> rotate = flipH . flipV

One picture above another. Pictures need the same width to maintain rectangular property

> above :: Picture -> Picture -> Picture
> above = (++)

One picture next to another; again to maintain the rectangular-ness the pictures need the same height

> sideBySide :: Picture -> Picture -> Picture
> sideBySide = zipWith (++)

Superimpose one picture above another. Assume the pictures to be the same size. The individual characters are combined using the combine function.

> superimpose :: Picture -> Picture -> Picture
> superimpose = zipWith (zipWith combine)

for the result to be '.' both components have to the '.'; otherwise get the '#' character. (Sounds here like we are simply looking to replace dots '.' with dots and if no dot is found then place a pound sign '#'. This makes sense because the picture is composed of dots and pound signs).

> combine :: Char -> Char -> Char

> combine topCH bottomCh
>  = if (topCh == '.' && bottomCh == '.')
>       then '.'
>       else '#'

Inverting the colors in a picture, done pointiwse by invert

> invertColor :: Picture -> Picture
> invertColor = map (map invert)

invert works by making the result '.' unless the input is '.'

> invert :: Char -> Char
> invert ch = if ch == '.' then '#' else '.'

end of file
