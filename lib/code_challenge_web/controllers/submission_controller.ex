defmodule CodeChallengeWeb.SubmissionController do
  use CodeChallengeWeb, :controller

  alias CodeChallenge.Challenge
  alias CodeChallenge.Challenge.Submission

  action_fallback CodeChallengeWeb.FallbackController

  def index(conn, _params) do
    submissions = Challenge.list_submissions()
    render(conn, "index.json", submissions: submissions)
  end

  def correct(conn, _params) do
    submissions = Challenge.correct_submissions()
    render(conn, "index.json", submissions: submissions)
  end

  def random_correct(conn, _params) do
    submissions = Challenge.random_correct_submission()
    render(conn, "index.json", submissions: submissions)
  end

  def create(conn, %{"submission" => submission_params}) do
    with {:ok, %Submission{} = submission} <- Challenge.create_submission(submission_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.submission_path(conn, :show, submission))
      |> render("show.json", submission: submission)
    end
  end

  def show(conn, %{"id" => id}) do
    submission = Challenge.get_submission!(id)
    render(conn, "show.json", submission: submission)
  end

  def update(conn, %{"id" => id, "submission" => submission_params}) do
    submission = Challenge.get_submission!(id)

    with {:ok, %Submission{} = submission} <- Challenge.update_submission(submission, submission_params) do
      render(conn, "show.json", submission: submission)
    end
  end

  def delete(conn, %{"id" => id}) do
    submission = Challenge.get_submission!(id)

    with {:ok, %Submission{}} <- Challenge.delete_submission(submission) do
      send_resp(conn, :no_content, "")
    end
  end
end
