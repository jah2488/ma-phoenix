defmodule PhoenixSpike.Acquisition do
  use PhoenixSpike.Web, :model

  schema "acquisitions" do
    field :announcement_date, Ecto.Date
    field :deal_value, :integer
    belongs_to :company, PhoenixSpike.Company
    belongs_to :country, PhoenixSpike.Country
    belongs_to :industry, PhoenixSpike.Industry

    field :created_at, Ecto.DateTime
    field :updated_at, Ecto.DateTime
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:announcement_date, :deal_value])
    |> validate_required([:announcement_date, :deal_value])
  end
end
