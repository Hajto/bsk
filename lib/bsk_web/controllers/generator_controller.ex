defmodule BskWeb.GeneratorController do
  use BskWeb, :controller
  require EEx

  def get(conn, %{"workstation" => workstation}) do
    case Integer.parse(workstation) do
      {workstation, ""} ->
        text(conn, gen(workstation))

      _ ->
        text(conn, "Podaj poprawne stanowisko")
    end
  end

  def index(conn, _) do
    text(conn, "do obecnego url dopisz /{numer_stanowiska}")
  end

  EEx.function_from_file(:def, :gen, "lib/bsk_web/template.EEx", [:workstation])
end
