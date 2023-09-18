defmodule AshPhoenixEmbeddedTest.API.ImageContainer.SubImage do
  use Ash.Resource, data_layer: :embedded

  attributes do
    attribute :url, :string, allow_nil?: false
  end

  actions do
    defaults [:create, :update, :read]
  end
end
