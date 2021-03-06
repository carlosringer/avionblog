defmodule Avionblog.Router do
  use Avionblog.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Avionblog do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
resources "/posts", PostController

  end

  scope "/", Avionblog do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  resources "/users", UserController

end

  # Other scopes may use custom stacks.
  # scope "/api", Avionblog do
  #   pipe_through :api
  # end
end
