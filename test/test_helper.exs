ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Avionblog.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Avionblog.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Avionblog.Repo)

