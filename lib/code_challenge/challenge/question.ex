defmodule CodeChallenge.Challenge.Question do
  use Ecto.Schema
  import Ecto.Changeset

  schema "questions" do
    field :answer, :string
    field :body, :string
    field :day, :date
    field :difficulty, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:title, :body, :answer, :day, :difficulty])
    |> validate_required([:title, :body, :answer, :day, :difficulty])
  end
end
