#!/bin/bash

mix deps.get
mix ecto.create
mix ecto.migrate

LD_PRELOAD=/usr/local/lib/faketime/libfaketime.so.1 FAKETIME="-4h" FAKETIME_NO_CACHE=1 PORT=4001 mix phx.server

# mix run priv/repo/seeds.exs