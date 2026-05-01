1) Initial setup 


Step 1 — install mise

`curl https://mise.run | sh`

Step 2 — Create mise.toml:

`[tools]
erlang = "28.5"
elixir = "1.19.5"
node = "24.15.0"
postgres = "18.3"
`
Step 3 — install tools
`mise install`

note: build-essential & libncurses5-deb & libncursesw5.dev is depeedencies for compiling erlang

Step 4 — start Postgres

`pg_ctl start -l logfile`

Step 5 — install Elixir tooling

`mix local.hex --force
mix local.rebar --force
`

Step 6 — install Phoenix generator

`mix archive.install hex phx_new`
Step 7 — create project

`mix phx.new my_app --database postgres`

Step 8 — initialize DB

`mix ecto.create
mix ecto.migrate`

Step 9 — start server

`mix phx.server`

Step 10 — Git init + push


`git init
git add .
git commit -m "initial commit"
git remote add origin git@github.com:YOU/my_app.git
git push -u origin main`


Part 2) Clone on another machine


Step 1 — clone repo

Step 2 — `mise install`

Step 3 — install dependencies

`mix local.hex --force
mix local.rebar --force
mix deps.get`

Step 4 — start Postgres

`pg_ctl start -l logfile`

Step 5 — setup database

`mix ecto.setup`

Step 6 — run app

`mix phx.server`

