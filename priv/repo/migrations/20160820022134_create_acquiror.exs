defmodule PhoenixSpike.Repo.Migrations.CreateAcquiror do
  use Ecto.Migration

  def change do
    create table(:acquirors) do
      add :acquisition_id, references(:acquisition, on_delete: :nothing)

      timestamps()
    end
    create index(:acquirors, [:acquisition_id])

  end
end
