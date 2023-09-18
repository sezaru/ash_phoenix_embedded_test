defmodule AshPhoenixEmbeddedTest.Run do
  alias AshPhoenixEmbeddedTest.{API, API.ImageContainer}

  def run do
    params =
      %{
        images: [
          %{uuid: Ecto.UUID.generate(), thumbnail: %{url: "some_url"}},
          %{uuid: Ecto.UUID.generate(), thumbnail: %{url: "some_url"}}
        ]
      }

    property = ImageContainer |> Ash.Changeset.new(params) |> API.create!()

    form = AshPhoenix.Form.for_update(property, :update, api: API, forms: [auto?: true])

    AshPhoenix.Form.submit(form)
  end
end
