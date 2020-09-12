FROM elixir:1.10

ENV PHX_VERSION 1.5.1
ENV NODE_MAJOR 12

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY . $APP_HOME

RUN set -x && \
  mix local.hex --force && \
  mix local.rebar --force && \
  mix archive.install hex phx_new $PHX_VERSION --force && \
  mix deps.get && \
  mix compile && \
  mix phx.digest

ENTRYPOINT /app/prod.sh