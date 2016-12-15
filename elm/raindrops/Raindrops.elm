module Raindrops exposing (..)

import String


type alias Factor =
    ( Bool, String )


raindrops : Int -> String
raindrops num =
    if String.isEmpty (output num) then
        toString num
    else
        output num


factors : Int -> List Factor
factors num =
    [ ( (hasFactor num 3), "Pling" )
    , ( (hasFactor num 5), "Plang" )
    , ( (hasFactor num 7), "Plong" )
    ]


hasFactor : Int -> Int -> Bool
hasFactor num factor =
    rem num factor == 0


output : Int -> String
output num =
    factors num
        |> (List.filter fst)
        |> (List.map snd)
        |> (String.join "")
