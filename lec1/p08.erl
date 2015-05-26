-module(p08).
-export([compress/1]).

compress(List)->
  p05:reverse(compress(List, [])).

compress([], Acc)->
  Acc;

compress([X, X|T], Acc)->
  io:format("Ignore: ~s\n", [X]),
  compress([X|T], Acc);

compress([X, Y|T], Acc)->
  io:format("Add: ~s\n", [X]),
  compress([Y|T], [X|Acc]);

compress([X], Acc)->
  io:format("Add latest: ~s\n", [X]),
  [X|Acc].
