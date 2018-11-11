module Dstring where

concatena :: String -> String -> String -> Int -> String
concatena a b c 0 = take (length a + length b) (a ++ b ++ c)
concatena a b c n = concatena a b (a ++ b) (n - 1)

quebraAux :: String -> Char -> String
quebraAux (h:t) b
    |h == b = ""
    |otherwise = [h] ++ quebraAux t b

quebra :: String -> Char -> String -> Int -> String
quebra a b c 0 = take (length c) ((quebraAux a b) ++ c)
quebra a b c n = quebra a b (quebraAux a b) (n - 1)

f :: Int -> Int -> String
f opt max
    |opt == 0 = quebra "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz" 'a' "" max
    |opt == 1 = concatena "ABCDEFGHIJKLMNOPQRSTUVWXYZ" "abcdefghijklmnopqrstuvwxyz" "" max