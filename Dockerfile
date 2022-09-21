FROM elixir:1.13.4-slim

WORKDIR /var/app

RUN apt-get update -y && \
  apt-get install -y inotify-tools build-essential

RUN apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN mix local.hex --force && \
  mix local.rebar --force

COPY mix.exs /var/app
COPY mix.lock /var/app

RUN mix deps.get

COPY . /var/app

RUN mix compile

CMD ["mix", "phx.server"]
