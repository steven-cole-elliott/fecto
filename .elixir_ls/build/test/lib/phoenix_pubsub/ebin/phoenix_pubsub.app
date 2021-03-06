{application,phoenix_pubsub,
             [{description,"Distributed PubSub and Presence platform"},
              {modules,['Elixir.Phoenix.PubSub',
                        'Elixir.Phoenix.PubSub.BroadcastError',
                        'Elixir.Phoenix.PubSub.GC',
                        'Elixir.Phoenix.PubSub.Local',
                        'Elixir.Phoenix.PubSub.LocalSupervisor',
                        'Elixir.Phoenix.PubSub.PG2',
                        'Elixir.Phoenix.PubSub.PG2Server',
                        'Elixir.Phoenix.PubSub.Supervisor',
                        'Elixir.Phoenix.Tracker',
                        'Elixir.Phoenix.Tracker.Clock',
                        'Elixir.Phoenix.Tracker.DeltaGeneration',
                        'Elixir.Phoenix.Tracker.Replica',
                        'Elixir.Phoenix.Tracker.Shard',
                        'Elixir.Phoenix.Tracker.State']},
              {registered,[]},
              {vsn,"1.1.2"},
              {applications,[kernel,stdlib,elixir,logger,crypto]},
              {mod,{'Elixir.Phoenix.PubSub.Supervisor',[]}}]}.
