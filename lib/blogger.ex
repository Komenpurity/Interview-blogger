defmodule Blogger do
  @moduledoc """
  Documentation for `Blogger`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Blogger.hello()
      :world

  """
  def fetch_blog do
    HTTPoison.get! "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"
  end
end
