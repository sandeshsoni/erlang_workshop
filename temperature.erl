-module(temperature).
-export([convert/1]).
%% -compile(export_all)

f2c(F) ->
  (F-32)*5/9.

c2f(C) ->
  (C * 9/5 ) + 32.

convert({toF, C}) ->
%%  c2f(Celsius).
  {c, f2c(C) };
convert({toC, F}) ->
  {f, c2f(F) }.

