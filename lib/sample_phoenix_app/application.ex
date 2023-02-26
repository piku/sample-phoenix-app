defmodule SamplePhoenixApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      SamplePhoenixAppWeb.Telemetry,
      # Start the Ecto repository
      SamplePhoenixApp.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: SamplePhoenixApp.PubSub},
      # Start Finch
      {Finch, name: SamplePhoenixApp.Finch},
      # Start the Endpoint (http/https)
      SamplePhoenixAppWeb.Endpoint
      # Start a worker by calling: SamplePhoenixApp.Worker.start_link(arg)
      # {SamplePhoenixApp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SamplePhoenixApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SamplePhoenixAppWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
