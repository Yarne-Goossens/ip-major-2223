defmodule UserDemo.UserContext.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :date_of_birth, :date
    field :first_name, :string
    field :last_name, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :date_of_birth])
    |> validate_required([:first_name, :last_name, :date_of_birth])
  end
end
