-module(p06).
-export([is_palindrome/1]).

%
%  AHTUNG. We have a bug! :'(
%

is_palindrome(Palindrome)->
  PartLen = (p04:len(Palindrome)-1) div 2,
  reverse_first_and_compare_with_last(Palindrome, PartLen).

reverse_first_and_compare_with_last([H|T], N)->
  rfacwl(T, N-1, [H]).

rfacwl([_|T], 0, FI)-> FI == T;
rfacwl([H|T], N, FI)-> rfacwl(T, N-1, [H|FI]).
