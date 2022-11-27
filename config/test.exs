import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :phx_deploy_test, PhxDeployTestWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "OsDbynTexegel72HvaXN3a+nKK9uqmp4KUx6uhUiboOH6j+6yuMJoePZlkAnoJmI",
  server: false

# In test we don't send emails.
config :phx_deploy_test, PhxDeployTest.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
