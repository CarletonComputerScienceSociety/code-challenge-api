defmodule CodeChallengeWeb.SubmissionControllerTest do
  use CodeChallengeWeb.ConnCase

  alias CodeChallenge.Challenge
  alias CodeChallenge.Challenge.Submission

  @create_attrs %{
    answer: "some answer",
    correct: true,
    email: "some email"
  }
  @update_attrs %{
    answer: "some updated answer",
    correct: false,
    email: "some updated email"
  }
  @invalid_attrs %{answer: nil, correct: nil, email: nil}

  def fixture(:submission) do
    {:ok, submission} = Challenge.create_submission(@create_attrs)
    submission
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all submissions", %{conn: conn} do
      conn = get(conn, Routes.submission_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create submission" do
    test "renders submission when data is valid", %{conn: conn} do
      conn = post(conn, Routes.submission_path(conn, :create), submission: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.submission_path(conn, :show, id))

      assert %{
               "id" => id,
               "answer" => "some answer",
               "correct" => true,
               "email" => "some email"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.submission_path(conn, :create), submission: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update submission" do
    setup [:create_submission]

    test "renders submission when data is valid", %{conn: conn, submission: %Submission{id: id} = submission} do
      conn = put(conn, Routes.submission_path(conn, :update, submission), submission: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.submission_path(conn, :show, id))

      assert %{
               "id" => id,
               "answer" => "some updated answer",
               "correct" => false,
               "email" => "some updated email"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, submission: submission} do
      conn = put(conn, Routes.submission_path(conn, :update, submission), submission: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete submission" do
    setup [:create_submission]

    test "deletes chosen submission", %{conn: conn, submission: submission} do
      conn = delete(conn, Routes.submission_path(conn, :delete, submission))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.submission_path(conn, :show, submission))
      end
    end
  end

  defp create_submission(_) do
    submission = fixture(:submission)
    %{submission: submission}
  end
end
