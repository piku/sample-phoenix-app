# Sample Phoenix Application for `piku`

Simple Phoenix app to demonstrate deployment on [piku](https://github.com/piku/piku).

It was tested and worked a while ago (Oct. 2022), not sure about now. 
It should be a good starting point nevertheless.

## Set up
Make sure you have erlang, elixr and postgres configured on your server.

Before the first automatic deploy, you have to ssh to your server, go to the repo and run `ecto create` to create the database.

Then on your local development machine, set the remote git branch for piku push-to-deploy.

```shell
git remote add piku piku@you_serveer:sample_phoenix_app
```

You are ready to deploy with:

```shell
git push piku master
```
