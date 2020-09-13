defmodule CodeChallenge.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :title, :string
      add :body, :text
      add :answer, :text
      add :difficulty, :string
      add :day, :date

      timestamps()
    end

  end
end
