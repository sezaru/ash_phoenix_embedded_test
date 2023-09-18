import Config

config :ash, :use_all_identities_in_manage_relationship?, false

config :ash, :utc_datetime_type, :datetime

ash_apis = [AshPhoenixEmbeddedTest.API]

config :ash_phoenix_embedded_test, :ash_apis, ash_apis
