# Alchemist Camp - Challenge 1
defmodule Greeter do
  @first_name "john"
  @last_name "doe"
  @full_name @first_name <> " " <> @last_name

  def start do
    welcome()

    first_name = String.trim(IO.gets("What's your first name? "))
    response(first_name)

    last_name = String.trim(IO.gets("What's your last name? "))
    response(last_name)

    full_name = String.capitalize(first_name) <> " " <> String.capitalize(last_name)
    fullname_response(full_name)

    goodbye(full_name)
  end

  defp welcome do
    IO.puts("Welcome to the Greeter Application")
  end

  defp response(name) do
    case String.downcase(name) do
      @first_name ->
        IO.puts("That's cool because my name is also #{String.capitalize(@first_name)}.")

      @last_name ->
        IO.puts(
          "That's wonderful because I'm also having #{String.capitalize(@last_name)} as my last name."
        )

      _ ->
        IO.puts("Cool")
    end
  end

  defp fullname_response(full_name) do
    if full_name === @full_name do
      IO.puts("That's great because my name is also #{full_name}")
    else
      IO.puts("Nice to meet you #{full_name}")
    end
  end

  defp goodbye(full_name) do
    IO.puts("Goodbye #{full_name}, see you later!")
  end
end
