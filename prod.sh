#!/bin/bash

mix deps.get
mix ecto.create
mix ecto.migrate
mix run priv/repo/seeds.exs
PORT=4001 mix phx.server