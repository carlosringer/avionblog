defmodule Avionblog.User do
  use Avionblog.Web, :model

  schema "users" do
    field :password, :string, virtual: true
    field :password_confirmation, :string, virtual: true

    timestamps
  end


  @required_fields ~w(username email password_confirmation)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
