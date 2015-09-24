
-module(tycho_app).
-vsn("1.0.0").

-behaviour(application).

-export([start/0, start/2, stop/1]).


%%%%% ------------------------------------------------------- %%%%%
% Public API


start() ->
    application:ensure_all_started(tycho),
    lager:info("Started tycho server"),
    application:load(tycho).
    

start(_StartType, _StartArgs) ->
    tycho_sup:start_link().


stop(_State) ->
    ok.
    
