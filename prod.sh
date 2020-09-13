#!/bin/bash

mix deps.get
mix ecto.create
mix ecto.migrate
PORT=4001 mix phx.server

# mix run priv/repo/seeds.exs