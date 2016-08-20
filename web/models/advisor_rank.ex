defmodule PhoenixSpike.AdvisorRank do
  use PhoenixSpike.Web, :model

  schema "advisor_ranks" do
    field :year, :integer
    field :rank, :integer
    belongs_to :company, PhoenixSpike.Company

    field :created_at, Ecto.DateTime
    field :updated_at, Ecto.DateTime
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:year, :rank])
    |> validate_required([:year, :rank])
  end
end
