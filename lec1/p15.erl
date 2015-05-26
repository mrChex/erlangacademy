-module(p15).
-export([replicate/2]).

replicate(List, Count)->
  replicate(List, Count, []).

replicate([], _, Acc)->
  p05:reverse(Acc);

replicate([H|T], Count, Acc)->
  replicate(T, Count, repeat(H, Count, Acc)).


repeat(_, 0, Acc)->
  Acc;

repeat(Target, Count, Acc)->
  repeat(Target, Count-1, [Target|Acc]).

