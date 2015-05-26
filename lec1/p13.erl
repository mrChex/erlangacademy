-module(p13).
-export([decode/1]).

decode(List)->
  decode(List, []).

decode([], Acc)->
  p05:reverse(Acc);

decode([{Count, Val}|T], Acc)->
  decode(T, expand(Count, Val, Acc)).

expand(1, Val, Acc)->
  [Val|Acc];

expand(Count, Val, Acc)->
  expand(Count-1, Val, [Val|Acc]).
