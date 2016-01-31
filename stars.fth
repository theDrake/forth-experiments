: STAR ( -- )  \ Print a single star
   42 EMIT ;   \ 42 is the ASCII code for *

: STARS ( n -- )  \ Print n stars
  0 DO STAR LOOP ;

: SQUARE ( n -- )  \ Print an n-line square of stars
  DUP 0 DO
  DUP STARS CR
  LOOP DROP ;

: TRIANGLE ( n -- )  \ Print an n-line triangle
  1 + 1 DO
  I STARS CR
  LOOP ;

: TOWER ( n -- )  \ Print a "tower" with a base of size n
  DUP
  1 - TRIANGLE
  SQUARE ;
