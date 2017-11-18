-module('targetTestErlang').
-export([boolean/0,
    integer/0,
    string/0,
    addition/1,
    subtraction/1,
    multiplication/1,
    division/1,
    remainder/1,
    intDivision/1,
    equality/2,
    notEquality/2,
    lessThan/2,
    lessThanOrEq/2,
    moreThan/2,
    moreThanOrEq/2,
    orTest/2,
    andTest/2,
    notTest/1,
    xorTest/2,
    borTest/2,
    bandTest/2,
    bnotTest/1,
    bxorTest/2,
    ifTest/1,
    echo/1,
    sequence/0,
    errIfNot3/1,
    errIfNot3Tuple/1,
    errIfNot3and3/2,
    caseExample/1,
    caseWithCall/1]).

boolean() -> true.
integer() -> 3.
string() ->"Hello, world!".

addition(Var) -> Var + 3.
subtraction(Var) -> Var - 3.

multiplication(Var) -> Var * 3.
division(Var) -> Var / 3.

remainder(Var) -> Var rem 3.
intDivision(Var) -> Var div 3.

equality(Var1,Var2)->Var1==Var2.
notEquality(Var1,Var2)->Var1/=Var2.
lessThan(Var1,Var2)->Var1<Var2.
lessThanOrEq(Var1,Var2)->Var1=<Var2.
moreThan(Var1,Var2)->Var1>Var2.
moreThanOrEq(Var1,Var2)->Var1>=Var2.

orTest(Var1,Var2)->Var1 or Var2.
andTest(Var1,Var2)->Var1 and Var2.
notTest(Var)->not Var.
xorTest(Var1,Var2)->Var1 xor Var2.

borTest(Var1,Var2)->Var1 bor Var2.
bandTest(Var1,Var2)->Var1 band Var2.
bnotTest(Var)->bnot Var.
bxorTest(Var1,Var2)->Var1 bxor Var2.

ifTest(Var)->
    if
        Var == 42 ->
            "The meaning of life, the universe & everything";
        true ->
            "= 6 x 9"
     end.

echo(Var)->Var.

sequence() ->
    io:format("A"),
    io:format("B"),
    io:format("C").

errIfNot3(Var) ->
    3 = Var.

errIfNot3Tuple(Var) ->
    {3,atom} = {Var,atom}.

errIfNot3and3(Var,Var2) ->
    {3,3} = {Var,Var2}.

caseExample(Var)->
    case Var of
        match ->
            42;
        othermatch ->
            not42;
        _ -> nomatch
    end.

caseWithCall(Var)->
    Res = io:format(Var),
    case Res of
        nope ->
            "Didn't work";
        ok ->
            "ok"
    end.
