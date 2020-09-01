defmodule CodeChallenge.Repo.Migrations.CreateSubmissions do
  use Ecto.Migration

  def change do
    create table(:submissions) do
      add :email, :string
      add :answer, :text
      add :correct, :boolean, default: false, null: false

      timestamps()
    end

  end
end
