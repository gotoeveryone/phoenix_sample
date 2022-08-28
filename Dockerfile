FROM elixir:1.13.4-slim

WORKDIR /var/app

RUN apt-get update -y && \
  apt-get install -y inotify-tools build-essential

RUN apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN mix local.hex --force && \
  mix local.rebar --force

CMD ["mix", "phx.server"]
