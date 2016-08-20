defmodule PhoenixSpike.Repo.Migrations.CreateAcquisition do
  use Ecto.Migration

  def change do
    create table(:acquisitions) do
      add :announcement_date, :date
      add :deal_value, :integer
      add :company_id, references(:company, on_delete: :nothing)
      add :country_id, references(:country, on_delete: :nothing)
      add :industry_id, references(:industry, on_delete: :nothing)

      timestamps()
    end
    create index(:acquisitions, [:company_id])
    create index(:acquisitions, [:country_id])
    create index(:acquisitions, [:industry_id])

  end
end
