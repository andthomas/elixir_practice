defmodule ElixirTodo do
  @moduledoc """
  Documentation for ElixirTodo.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTodo.hello()
      :world

  """
  def hello do
    :world
  end

  def create_list do
    ["Pick up the kids", "Take a nap", "Learn Elixir"]
  end

  def randomize(list) do 
    Enum.shuffle(list)
  end

  def contains?(list, item) do 
    Enum.member?(list, item)
  end
end
