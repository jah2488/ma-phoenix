defmodule PhoenixSpike.Repo.Migrations.CreateCompany do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :name, :string
      add :is_advisor, :boolean, default: false, null: false
      add :is_acquired, :boolean, default: false, null: false
      add :is_acquiror, :boolean, default: false, null: false

      timestamps()
    end

  end
end
