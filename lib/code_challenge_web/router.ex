defmodule CodeChallengeWeb.Router do
  use CodeChallengeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug CORSPlug, origin: ["http://localhost:4000", "http://ccss.carleton.ca"]
    plug :accepts, ["json"]
  end

  scope "/api", CodeChallengeWeb do
    pipe_through :api
    #get "/submissions", SubmissionController, :index
    #post "/submissions", SubmissionController, :create
    #get "/submissions/correct", SubmissionController, :correct
    get "/submissions/correct/random", SubmissionController, :random_correct
    resources "/submissions", SubmissionController, except: [:delete, :edit, :update, :new]
    resources "/questions", QuestionController, except: [:delete, :edit, :create, :show, :update, :new]
  end

  scope "/", CodeChallengeWeb do
    pipe_through :browser

    #get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", CodeChallengeWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      #live_dashboard "/dashboard", metrics: CodeChallengeWeb.Telemetry
    end
  end
end
