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

Repo.insert! %Submission{
  email: "matt@carleton.com",
  correct: false,
  answer: "hmm"
}

Repo.insert! %Submission{
    email: "matt@carleton.com",
    correct: true,
    answer: "hmm3"
}

Repo.insert! %Submission{
    email: "matt2@carleton.com",
    correct: true,
    answer: "hmm3"
}