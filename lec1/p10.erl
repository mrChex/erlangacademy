-module(p10).
-export([encode/1]).

encode(List)->
  ListPacked = p09:pack(List),
  encode(ListPacked, []).

encode([], Acc)->
  p05:reverse(Acc);

encode([[_|_] = H|T], Acc)->
  Len = p04:len(H),
  [FirstItem|_] = H,
  encode(T, [{Len, FirstItem}|Acc]).
