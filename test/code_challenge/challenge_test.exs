defmodule CodeChallenge.ChallengeTest do
  use CodeChallenge.DataCase

  alias CodeChallenge.Challenge

  describe "submissions" do
    alias CodeChallenge.Challenge.Submission

    @valid_attrs %{answer: "some answer", correct: true, email: "some email"}
    @update_attrs %{answer: "some updated answer", correct: false, email: "some updated email"}
    @invalid_attrs %{answer: nil, correct: nil, email: nil}

    def submission_fixture(attrs \\ %{}) do
      {:ok, submission} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Challenge.create_submission()

      submission
    end

    test "list_submissions/0 returns all submissions" do
      submission = submission_fixture()
      assert Challenge.list_submissions() == [submission]
    end

    test "get_submission!/1 returns the submission with given id" do
      submission = submission_fixture()
      assert Challenge.get_submission!(submission.id) == submission
    end

    test "create_submission/1 with valid data creates a submission" do
      assert {:ok, %Submission{} = submission} = Challenge.create_submission(@valid_attrs)
      assert submission.answer == "some answer"
      assert submission.correct == true
      assert submission.email == "some email"
    end

    test "create_submission/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Challenge.create_submission(@invalid_attrs)
    end

    test "update_submission/2 with valid data updates the submission" do
      submission = submission_fixture()
      assert {:ok, %Submission{} = submission} = Challenge.update_submission(submission, @update_attrs)
      assert submission.answer == "some updated answer"
      assert submission.correct == false
      assert submission.email == "some updated email"
    end

    test "update_submission/2 with invalid data returns error changeset" do
      submission = submission_fixture()
      assert {:error, %Ecto.Changeset{}} = Challenge.update_submission(submission, @invalid_attrs)
      assert submission == Challenge.get_submission!(submission.id)
    end

    test "delete_submission/1 deletes the submission" do
      submission = submission_fixture()
      assert {:ok, %Submission{}} = Challenge.delete_submission(submission)
      assert_raise Ecto.NoResultsError, fn -> Challenge.get_submission!(submission.id) end
    end

    test "change_submission/1 returns a submission changeset" do
      submission = submission_fixture()
      assert %Ecto.Changeset{} = Challenge.change_submission(submission)
    end
  end
end
