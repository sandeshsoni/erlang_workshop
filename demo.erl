-module(demo).
-export([area/1]) .

area({square, Side}) ->
  Side * Side;
area({circle, Radius}) ->
  3.14 * Radius, Radius;
area({triangle, A, B, C}) ->
  S = (A + B + C)/2,
  P = S*(S-A)*(S-B)*(S-C),
  math:sqrt(P).
