-module(p02).
-export([but_last/1]).


but_last([_,_]=A)->
  A;

  but_last([_|T])->
    but_last(T).
