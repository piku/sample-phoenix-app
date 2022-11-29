locale
mix deps.get --only prod
mix compile
mix assets.deploy
