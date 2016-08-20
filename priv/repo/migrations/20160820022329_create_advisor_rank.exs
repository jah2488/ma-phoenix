defmodule PhoenixSpike.Repo.Migrations.CreateAdvisorRank do
  use Ecto.Migration

  def change do
    create table(:advisor_ranks) do
      add :year, :integer
      add :rank, :integer
      add :company_id, references(:company, on_delete: :nothing)

      timestamps()
    end
    create index(:advisor_ranks, [:company_id])

  end
end
