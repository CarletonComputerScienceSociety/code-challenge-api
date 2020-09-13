defmodule CodeChallengeWeb.QuestionView do
  use CodeChallengeWeb, :view
  alias CodeChallengeWeb.QuestionView

  def render("index.json", %{questions: questions}) do
    %{data: render_many(questions, QuestionView, "question.json")}
  end

  def render("show.json", %{question: question}) do
    %{data: render_one(question, QuestionView, "question.json")}
  end

  def render("question.json", %{question: question}) do
    %{id: question.id,
      title: question.title,
      body: question.body,
      day: question.day,
      difficulty: question.difficulty}
  end
end
