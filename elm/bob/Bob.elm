module Bob exposing (..)

import Regex
import String


type Input
    = Silence
    | Shout
    | Question
    | Other


hey : String -> String
hey str =
    let
        input =
            if isSilence str then
                Silence
            else if isShout str then
                Shout
            else if isQuestion str then
                Question
            else
                Other
    in
        case input of
            Silence ->
                "Fine. Be that way!"

            Shout ->
                "Whoa, chill out!"

            Question ->
                "Sure."

            Other ->
                "Whatever."


isSilence : String -> Bool
isSilence str =
    str |> String.trim |> String.isEmpty


isShout : String -> Bool
isShout str =
    String.toUpper str == str && Regex.contains (Regex.regex "[A-Za-z]") str


isQuestion : String -> Bool
isQuestion str =
    String.endsWith "?" str
