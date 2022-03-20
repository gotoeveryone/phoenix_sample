defmodule PhoenixSample.Presence do
  use Phoenix.Presence,
    otp_app: :live_view_counter,
    pubsub_server: PhoenixSample.PubSub
end
