defmodule CodeChallenge.Challenge.Submission do
  use Ecto.Schema
  import Ecto.Changeset

  schema "submissions" do
    field :answer, :string
    field :correct, :boolean, default: false
    field :email, :string

    timestamps()
  end

  @doc false
  def changeset(submission, attrs) do
    submission
    |> cast(attrs, [:email, :answer, :correct])
    |> validate_required([:email, :answer, :correct])
  end
end
