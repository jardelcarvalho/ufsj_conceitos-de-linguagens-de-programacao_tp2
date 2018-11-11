module Dfloat where

soma :: Float -> Float -> Float -> Int -> Float
soma a b c 0 = a + b + c - c
soma a b c n = soma a b (a + b) (n - 1)

sub :: Float -> Float -> Float -> Int -> Float
sub a b c 0 = a - b + c - c
sub a b c n = sub a b (a - b) (n - 1)

mult :: Float -> Float -> Float -> Int -> Float
mult a b c 0 = a * b + c - c
mult a b c n = mult a b (a * b) (n - 1)

divi :: Float -> Float -> Float -> Int -> Float
divi a b c 0 = a / b + c - c
divi a b c n = divi a b (a / b) (n - 1)

f :: Int -> Int -> Float
f opt max
    |opt == 0 = soma 0.0 (-0.1e-308) 0.0 max
    |opt == 1 = sub 0.0 (-0.1e-308) 0.0 max
    |opt == 2 = mult 0.0 (-0.1e-308) 0.0 max
    |opt == 3 = divi 0.0 (-0.1e-308) 0.0 max