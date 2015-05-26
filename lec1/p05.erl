-module(p05).
-export([reverse/1]).

% > [1] == [1|[]].
% true

reverse([H|T])->
  reverse(T, [H]).

reverse([H|T], R)->
  reverse(T, [H|R]);

reverse([], R)->
  R.
