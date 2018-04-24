defmodule Sofor.Repo.Migrations.CreateDrivers do
  use Ecto.Migration

  def change do
    create table(:drivers) do
      add :name, :string
      add :email, :string
      add :plate, :string
      add :phone_num, :string

      timestamps()
    end

  end
end
