defmodule AshPhoenixEmbeddedTest.API.ImageContainer.Image do
  alias AshPhoenixEmbeddedTest.API.ImageContainer.SubImage

  use Ash.Resource, data_layer: :embedded

  attributes do
    attribute :uuid, :uuid, allow_nil?: false

    attribute :thumbnail, SubImage, allow_nil?: false
  end

  actions do
    defaults [:create, :update, :read]
  end
end
