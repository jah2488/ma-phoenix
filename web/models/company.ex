defmodule PhoenixSpike.Company do
  use PhoenixSpike.Web, :model

  schema "companies" do
    field :name, :string
    field :is_advisor, :boolean, default: false
    field :is_acquired, :boolean, default: false
    field :is_acquiror, :boolean, default: false

    field :created_at, Ecto.DateTime
    field :updated_at, Ecto.DateTime
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :is_advisor, :is_acquired, :is_acquiror])
    |> validate_required([:name, :is_advisor, :is_acquired, :is_acquiror])
  end
end
