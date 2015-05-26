#!/usr/bin/env python3

# I do this in 2min

L = [1,2, [3,4,5, [6,7, ["a", "b", ["c","d"]],8], 9], 10]

def d(T, Acc):
    if len(T) == 0:
        return Acc
    H = T.pop(0)
    if type(H) == list:
        d(H, Acc)
    else:
        Acc.append(H)
    return d(T, Acc)

r = d(L, [])
print("Result!")
print(r)
