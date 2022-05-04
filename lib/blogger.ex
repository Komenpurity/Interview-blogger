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
   def hello do
    :world
  end



  # fetching blog post from url

  def fetch_blog do
    HTTPoison.get! "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"
  end



 # converting lower string inputs into uppercase inputs

  def name(n) do
        n
        |> List.to_string
        |> String.upcase 
        |> String.split_at(3)  
    end



 # Fetching url using a library

    def header do    

      case HTTPoison.get("https://jsonplaceholder.typicode.com/todos/1") do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
          IO.puts body
        {:ok, %HTTPoison.Response{status_code: 404}} ->
          IO.puts "Not found :("
        {:error, %HTTPoison.Error{reason: reason}} ->
          IO.inspect reason
      end

    end

end

