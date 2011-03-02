%%==============================================================================
%% File: $Id$
%%
%% @doc Erlang bindings for ZeroMQ.
%%
%% @author Dhammika Pathirana <dhammika at gmail dot com>
%% @author Serge Aleynikov <saleyn at gmail dot com>.
%% @author Chris Rempel <csrl at gmx dot com>.
%% @copyright 2010 Dhammika Pathirana and Serge Aleynikov, 2011 Chris Rempel
%% @version {@version}
%% @end
%%==============================================================================

-define('DRIVER_NAME', 'zmq_drv').

%% ZMQ socket types.
-define('ZMQ_PAIR',         0).
-define('ZMQ_PUB',          1).
-define('ZMQ_SUB',          2).
-define('ZMQ_REQ',          3).
-define('ZMQ_REP',          4).
-define('ZMQ_XREQ',         5).
-define('ZMQ_XREP',         6).
-define('ZMQ_PULL',         7).
-define('ZMQ_PUSH',         8).
-define('ZMQ_XPUB',         9).
-define('ZMQ_XSUB',        10).

%% ZMQ socket options.
-define('ZMQ_HWM',          1).
-define('ZMQ_SWAP',         3).
-define('ZMQ_AFFINITY',     4).
-define('ZMQ_IDENTITY',     5).
-define('ZMQ_SUBSCRIBE',    6).
-define('ZMQ_UNSUBSCRIBE',  7).
-define('ZMQ_RATE',         8).
-define('ZMQ_RECOVERY_IVL', 9).
-define('ZMQ_MCAST_LOOP',  10).
-define('ZMQ_SNDBUF',      11).
-define('ZMQ_RCVBUF',      12).
-define('ZMQ_RCVMORE',     13).
-define('ZMQ_FD',          14).
-define('ZMQ_EVENTS',      15).
-define('ZMQ_TYPE',        16).
-define('ZMQ_LINGER',      17).
-define('ZMQ_RECONNECT_IVL',18).
-define('ZMQ_BACKLOG',     19).
-define('ZMQ_RECOVERY_IVL_MSEC', 20).
-define('ZMQ_RECONNECT_IVL_MAX', 21).

%% ZMQ send/recv options.
-define('ZMQ_NOBLOCK',      1).
-define('ZMQ_SNDMORE',      2).

%% ZMQ poll i/o multiplexing event.
-define('ZMQ_POLLIN',       1).
-define('ZMQ_POLLOUT',      2).

%% ZMQ port options.
-define('ZMQ_INIT',         1).
-define('ZMQ_TERM',         2).
-define('ZMQ_SOCKET',       3).
-define('ZMQ_CLOSE',        4).
-define('ZMQ_SETSOCKOPT',   5).
-define('ZMQ_GETSOCKOPT',   6).
-define('ZMQ_BIND',         7).
-define('ZMQ_CONNECT',      8).
-define('ZMQ_SEND',         9).
-define('ZMQ_RECV',        10).
-define('ZMQ_POLL',        11).

%% Debug log.
-ifdef(debug).
-define(log(Msg, MsgArgs), io:format("[~p.erl:~p] ~p: ~s~n", [?MODULE, ?LINE, self(), io_lib:format(Msg, MsgArgs)])).
-else.
-define(log(Msg, MsgArgs), true).
-endif.
