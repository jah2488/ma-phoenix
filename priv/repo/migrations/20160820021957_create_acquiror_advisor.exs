defmodule PhoenixSpike.Repo.Migrations.CreateAcquirorAdvisor do
  use Ecto.Migration

  def change do
    create table(:acquiror_advisors) do
      add :acquiror_id, :integer
      add :company_id, :integer

      timestamps()
    end

  end
end
