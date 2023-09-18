defmodule AshPhoenixEmbeddedTest.API.ImageContainer do
  @moduledoc false

  alias AshPhoenixEmbeddedTest.API.ImageContainer.Image

  use Ash.Resource, data_layer: Ash.DataLayer.Ets

  attributes do
    uuid_primary_key :id

    attribute :images, {:array, Image}, default: []
  end

  actions do
    defaults [:create, :update, :read]
  end
end
