defmodule AshPhoenixEmbeddedTest.API.Registry do
  @moduledoc false

  use Ash.Registry

  entries do
    entry AshPhoenixEmbeddedTest.API.ImageContainer
  end
end
