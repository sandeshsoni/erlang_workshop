-module(add3).
-behaviour(gen_server).

-export([start/1, do/2, print/1]).
-export([init/1, handle_call/3, handle_cast/2]).

start(I) ->
  gen_server:start(add3, I, []).

do(Apid, Msg) ->
  gen_server:start(Apid, Msg).

%% added new
print(Apid) ->
  genserver:cast(Apid, print).

init(I) ->
  {ok, I}.

handle_call({add,X}, _From, N0) ->
  N1 = N0 + X,
  {reply, N1, N1};
handle_call({sub,X},_From, N0) ->
  N1 = N0 - X,
  {reply, N1, N1};
handle_call(neg, _From, N0) ->
  N1 = -N0,
  {reply, N1, N1}.

handle_cast(print, N) ->
  io:format("Val: ~p\n", [N]),
  {noreply, N}.
