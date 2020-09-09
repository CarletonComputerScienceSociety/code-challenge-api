defmodule CodeChallengeWeb.QuestionControllerTest do
  use CodeChallengeWeb.ConnCase

  alias CodeChallenge.Challenge
  alias CodeChallenge.Challenge.Question

  @create_attrs %{
    answer: "some answer",
    body: "some body",
    day: ~D[2010-04-17],
    title: "some title"
  }
  @update_attrs %{
    answer: "some updated answer",
    body: "some updated body",
    day: ~D[2011-05-18],
    title: "some updated title"
  }
  @invalid_attrs %{answer: nil, body: nil, day: nil, title: nil}

  def fixture(:question) do
    {:ok, question} = Challenge.create_question(@create_attrs)
    question
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all questions", %{conn: conn} do
      conn = get(conn, Routes.question_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create question" do
    test "renders question when data is valid", %{conn: conn} do
      conn = post(conn, Routes.question_path(conn, :create), question: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.question_path(conn, :show, id))

      assert %{
               "id" => id,
               "answer" => "some answer",
               "body" => "some body",
               "day" => "2010-04-17",
               "title" => "some title"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.question_path(conn, :create), question: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update question" do
    setup [:create_question]

    test "renders question when data is valid", %{conn: conn, question: %Question{id: id} = question} do
      conn = put(conn, Routes.question_path(conn, :update, question), question: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.question_path(conn, :show, id))

      assert %{
               "id" => id,
               "answer" => "some updated answer",
               "body" => "some updated body",
               "day" => "2011-05-18",
               "title" => "some updated title"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, question: question} do
      conn = put(conn, Routes.question_path(conn, :update, question), question: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete question" do
    setup [:create_question]

    test "deletes chosen question", %{conn: conn, question: question} do
      conn = delete(conn, Routes.question_path(conn, :delete, question))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.question_path(conn, :show, question))
      end
    end
  end

  defp create_question(_) do
    question = fixture(:question)
    %{question: question}
  end
end
