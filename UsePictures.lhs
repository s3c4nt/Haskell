s3c4nt
Exercises from the end of chapter 2
Making use of the Pictures module

>module UsePictures where
>import Pictures

Define blackhorse which uses invertColor from the Pictures module to make the white parts of the ascii horse black (where white is '.' and black is '#')

>blackhorse :: Picture 
>blackhorse = invertColor(horse)

Create rotate which uses functions defined in the Pictures module to rotate a picture through 180 degrees

>rotate :: Picture -> Picture
>rotate = flipH . flipV

Create rotateHorse which should rotate the horse image through 180 degrees

>rotateHorse :: Picture 
>rotateHorse = UsePictures.rotate(horse)

Here we make a function that creates a black rectangle (where black = #). The catch is that we must make it using superimpose

>blackrectangle :: Picture -> Picture
>blackrectangle = superimpose(blackhorse  blackhorse)

Reread chapter 1
