-module(p12).
-export([decodeModified/1]).

decodeModified(List)->
  decode(List, []).

decode([], Acc)->
  p05:reverse(Acc);

decode([{Count, Val}|T], Acc)->
  decode(T, expand(Count, Val, Acc));

decode([H|T], Acc)->
  decode(T, [H|Acc]).

expand(1, Val, Acc)->
  [Val|Acc];

expand(Count, Val, Acc)->
  expand(Count-1, Val, [Val|Acc]).
