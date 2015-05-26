-module(p09).
-export([pack/1]).

pack(List)->
  p05:reverse(pack(List, [])).

pack([], Acc)->
  Acc;

pack(List, [])->
  {Packed, Tail} = do_pack(List, []),
  pack(Tail, [Packed]);

pack(List, Acc)->
  {Packed, Tail} = do_pack(List, []),
  pack(Tail, [Packed|Acc]).

do_pack([X,X|T], [])->
  io:format("Math first ~s\n",[X]),
  do_pack([X|T], [X]);

do_pack([X,X|T], Acc)->
  io:format("Math ~s\n", [X]),
  do_pack([X|T], [X|Acc]);

do_pack([X,Y|T], Acc)->
  io:format("Not math ~s /= ~s. Return.\n", [X,Y]),
  {[X|Acc], [Y|T]};

do_pack([X], Acc)->
  {[X|Acc], []}.
