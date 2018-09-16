defmodule TestModule do
  @moduledoc """
  Empty module for testing
  """

  @doc """
  returns the atom :world
  """
  @spec hello() :: keyword()
  def hello do
    [hello: "world"]
  end
end
