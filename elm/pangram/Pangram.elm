module Pangram exposing (..)

import String


isPangram : String -> Bool
isPangram string =
    string
        |> String.toLower
        |> containsLetters
        |> List.all identity


letters : List String
letters =
    [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]


containsLetters : String -> List Bool
containsLetters str =
    List.map (\letter -> (String.contains letter str)) letters
