-module(p07).
-export([flatten/1]).


flatten(List)->
  p05:reverse(flatten(List, [])).

flatten([], Acc)->
  Acc;

flatten([H|T], [])->
  flatten(T, [H]);

flatten([ [_|_] = C | [] ], Acc)->
  flatten(C, Acc);


flatten([ [_|_] = C | T ], Acc)->
  flatten(T, flatten(C, Acc));

flatten([H|T], Acc)->
  flatten(T, [H|Acc]).
