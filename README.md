# Sample Phoenix Application for `piku`

| Contributed by `axelbdt`

Simple Phoenix app to demonstrate deployment on [piku](https://github.com/piku/piku).

## Set up
Make sure you have Erlang, Elixir and Postgres configured on your server.
Install with asdf doesn't work as of now, install from source, prebuilt or with package manager. 

Before the first automatic deploy, you have to ssh to your server, go to the repo and run `ecto create` to create the database.

Then on your local development machine, set the remote git branch for piku push-to-deploy.

```shell
git remote add piku piku@you_server:sample_phoenix_app
```

You are ready to deploy with:

```shell
git push piku master
```
