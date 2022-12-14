defmodule Kubera.CMS.Page do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pages" do
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(page, attrs) do
    page
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end
end
