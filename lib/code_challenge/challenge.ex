defmodule CodeChallenge.Challenge do
  @moduledoc """
  The Challenge context.
  """

  import Ecto.Query, warn: false
  alias CodeChallenge.Repo

  alias CodeChallenge.Challenge.Submission

  @doc """
  Returns the list of submissions.

  ## Examples

      iex> list_submissions()
      [%Submission{}, ...]

  """
  def list_submissions do
    Repo.all(Submission)
  end


  def correct_submissions do
    submissions = Submission |> where([s], s.correct) |> Repo.all  
  end

  def random_correct_submission do
    query = from s in Submission,
              where: [correct: true],
              order_by: fragment("RANDOM()"),
              limit: 1,
              select: s

    Repo.all(query)
  end
  @doc """
  Gets a single submission.

  Raises `Ecto.NoResultsError` if the Submission does not exist.

  ## Examples

      iex> get_submission!(123)
      %Submission{}

      iex> get_submission!(456)
      ** (Ecto.NoResultsError)

  """
  def get_submission!(id), do: Repo.get!(Submission, id)

  @doc """
  Creates a submission.

  ## Examples

      iex> create_submission(%{field: value})
      {:ok, %Submission{}}

      iex> create_submission(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_submission(attrs \\ %{}) do
    if attrs["question_id"] == nil do
      %Submission{}
      |> Submission.changeset(Map.put(attrs, "correct", false))
      |> Repo.insert()
    else
      if attrs["correct"] == nil do
        if attrs["answer"] == "answer" do
          %Submission{}
          |> Submission.changeset(Map.put(attrs, "correct", true))
          |> Repo.insert()
        else
          %Submission{}
          |> Submission.changeset(Map.put(attrs, "correct", false))
          |> Repo.insert()
        end
      else
        %Submission{}
          |> Submission.changeset(Map.put(attrs, "correct", false))
          |> Repo.insert()
      end
    end 
  end

  @doc """
  Updates a submission.

  ## Examples

      iex> update_submission(submission, %{field: new_value})
      {:ok, %Submission{}}

      iex> update_submission(submission, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_submission(%Submission{} = submission, attrs) do
    submission
    |> Submission.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a submission.

  ## Examples

      iex> delete_submission(submission)
      {:ok, %Submission{}}

      iex> delete_submission(submission)
      {:error, %Ecto.Changeset{}}

  """
  def delete_submission(%Submission{} = submission) do
    Repo.delete(submission)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking submission changes.

  ## Examples

      iex> change_submission(submission)
      %Ecto.Changeset{data: %Submission{}}

  """
  def change_submission(%Submission{} = submission, attrs \\ %{}) do
    Submission.changeset(submission, attrs)
  end
end
