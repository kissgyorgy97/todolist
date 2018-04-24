defmodule Sofor.Driver do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Repo

  schema "drivers" do
    field :email, :string
    field :name, :string
    field :phone_num, :string
    field :plate, :string

    timestamps()
  end

  @doc false
  def changeset(%Driver{} = driver, attrs) do
    driver
    |> cast(attrs, [:name, :email, :plate, :phone_num])
    |> validate_required([:name, :email, :phone_num])
    |> validate_length(:name, min: 3)
    |> validate_length(:name, max: 140)
    |> validate_format(:email, ~r/@/)
  end
end
