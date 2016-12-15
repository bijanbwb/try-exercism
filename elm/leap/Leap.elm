module Leap exposing (..)


type Year
    = LeapYear
    | NonLeapYear


isLeapYear : Int -> Bool
isLeapYear year =
    case toLeap year of
        LeapYear ->
            True

        NonLeapYear ->
            False


toLeap : Int -> Year
toLeap year =
    if rem year 4 == 0 && not (rem year 100 == 0) || rem year 400 == 0 then
        LeapYear
    else
        NonLeapYear
