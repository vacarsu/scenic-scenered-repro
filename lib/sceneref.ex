defmodule Sceneref do
  @moduledoc """
  Starter application using the Scenic framework.
  """

  def start(_type, _args) do
    # load the viewport configuration from config
    main_viewport_config = Application.get_env(:sceneref, :viewport)

    # start the application with the viewport
    children = [
      {Scenic, viewports: [main_viewport_config]},
      {Sceneref.Scene.ExampleScene, {nil, [name: :example_scene]}},
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
