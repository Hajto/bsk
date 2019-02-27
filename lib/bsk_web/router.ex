defmodule BskWeb.Router do
  use BskWeb, :router

  scope "/", BskWeb do
    get "/", GeneratorController, :index
    get "/:workstation", GeneratorController, :get
  end
end
