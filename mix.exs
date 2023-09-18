defmodule AshPhoenixEmbeddedTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :ash_phoenix_embedded_test,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ash, "~> 2.14"},
      {:ash_phoenix, "~> 1.2.17"}
    ]
  end
end
