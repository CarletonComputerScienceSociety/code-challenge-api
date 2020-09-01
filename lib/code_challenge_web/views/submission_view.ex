defmodule CodeChallengeWeb.SubmissionView do
  use CodeChallengeWeb, :view
  alias CodeChallengeWeb.SubmissionView

  def render("index.json", %{submissions: submissions}) do
    %{data: render_many(submissions, SubmissionView, "submission.json")}
  end

  def render("show.json", %{submission: submission}) do
    %{data: render_one(submission, SubmissionView, "submission.json")}
  end

  def render("submission.json", %{submission: submission}) do
    %{id: submission.id,
      email: submission.email,
      answer: submission.answer,
      correct: submission.correct}
  end
end
