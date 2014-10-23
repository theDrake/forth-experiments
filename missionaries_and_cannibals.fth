\ Missionaries and Cannibals

create visited 100 cells allot
variable visitedcount

: resetvisited ( -- ) 0 visitedcount ! 0 visited ! ;
resetvisited

: addvisited ( n -- )
  visited visitedcount @ cells + !
  1 visitedcount +!

: isvisited ( n -- bool )
  0 swap
  visitedcount @ 0 do
    visited i cells + @ over ( false n element n -- )
    = if ( false n -- )
      nip -1 swap leave
    then
  loop
  drop
