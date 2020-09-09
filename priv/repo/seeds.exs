# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CodeChallenge.Repo.insert!(%CodeChallenge.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CodeChallenge.Repo
alias CodeChallenge.Challenge.Submission
alias CodeChallenge.Challenge.Question

Repo.insert! %Submission{
  email: "matt@carleton.com",
  correct: false,
  answer: "hmm"
}

Repo.insert! %Question{
    title: "Question 1",
    body: "<h1>Question</h1>",
    answer: "answer",
    day: ~D[2020-09-01]
}

Repo.insert! %Question{
    title: "Question 2",
    body: "<h1>Question2</h1>",
    answer: "answer",
    day: ~D[2020-09-02]
}