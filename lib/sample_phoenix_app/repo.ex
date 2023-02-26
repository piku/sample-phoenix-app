defmodule SamplePhoenixApp.Repo do
  use Ecto.Repo,
    otp_app: :sample_phoenix_app,
    adapter: Ecto.Adapters.Postgres
end
