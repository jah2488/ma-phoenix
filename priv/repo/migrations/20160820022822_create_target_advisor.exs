defmodule PhoenixSpike.Repo.Migrations.CreateTargetAdvisor do
  use Ecto.Migration

  def change do
    create table(:target_advisors) do
      add :acquisition_id, references(:acquisition, on_delete: :nothing)
      add :company_id, references(:company, on_delete: :nothing)

      timestamps()
    end
    create index(:target_advisors, [:acquisition_id])
    create index(:target_advisors, [:company_id])

  end
end
