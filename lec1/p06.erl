-module(p06).
-export([is_palindrome/1]).


is_palindrome(Palindrome)->
  PartLen = p04:len(Palindrome) div 2,
  {LastEstimated, LastFact} = slice_and_reverse_palindrome(Palindrome, PartLen),
  parts_is_palindrome(LastEstimated, LastFact).


slice_and_reverse_palindrome([H|T], PartLen)->
  slice_and_reverse_palindrome(T, PartLen-1, [H]).

slice_and_reverse_palindrome(Tail, 0, Acc)->
  {Acc, Tail};

slice_and_reverse_palindrome([H|T], PartLen, Acc)->
  slice_and_reverse_palindrome(T, PartLen-1, [H|Acc]).


parts_is_palindrome([X|Y], [_|[X|Y]])-> true;
parts_is_palindrome([X|Y], [X|Y])-> true;
parts_is_palindrome(_, _)-> false.
