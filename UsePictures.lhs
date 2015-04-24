s3c4nt
Exercises from the end of chapter 2
Making use of the Pictures module

>module UsePictures where
>import Pictures

Define blackhorse which uses invertColor from the Pictures module to make the white parts of the ascii horse black (where white is '.' and black is '#')

>blackhorse :: Picture 
>blackhorse = invertColor(horse)
