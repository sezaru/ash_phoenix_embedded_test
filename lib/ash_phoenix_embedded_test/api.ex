defmodule AshPhoenixEmbeddedTest.API do
  @moduledoc false

  use Ash.Api

  resources do
    registry AshPhoenixEmbeddedTest.API.Registry
  end
end
