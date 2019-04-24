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

  def see_items(list, count) do
    {_seen, to_see} = Enum.split(list, -count)
    to_see
  end

  def save(list, filename) do 
    binary = :erlang.term_to_binary(list)
    File.write(filename, binary)
  end

  def selection(number_of_items) do
    
    ElixirTodo.create_list
    |> ElixirTodo.randomize
    |> ElixirTodo.see_items(number_of_items)
  end

end
