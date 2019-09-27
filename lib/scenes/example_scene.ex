defmodule Sceneref.Scene.ExampleScene do
  use Scenic.Scene
  require Logger

  alias Scenic.Graph
  alias Scenic.ViewPort

  import Scenic.Primitives
  import Scenic.Components

  def init(_, _) do
    graph =
      Graph.build(font: :roboto, font_size: @text_size)
      |> button("btn_1", id: :btn_1, t: {5, 5})
      |> button("btn_2", id: :btn_2, t: {15, 15})

    {:ok, graph, push: graph}
  end
end
