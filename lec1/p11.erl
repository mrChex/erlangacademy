-module(p11).
-export([encodeModified/1]).

%
% Mainly copied from p10.
%

encodeModified(List)->
  ListPacked = p09:pack(List),
  encode(ListPacked, []).

encode([], Acc)->
  p05:reverse(Acc);

encode([[H]|T], Acc)->  % Difference
  encode(T, [H|Acc]);

encode([[_|_] = H|T], Acc)->
  Len = p04:len(H),
  [FirstItem|_] = H,
  encode(T, [{Len, FirstItem}|Acc]).
