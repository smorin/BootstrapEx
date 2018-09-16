IO.puts "insert.exs"

{:ok, ast} = Code.string_to_quoted(File.read!("lib/test_module.ex"))

IO.inspect ast

IO.puts "done"

defmodule Insert  do
    def print({:ok, ast}) do
        IO.inspect ast
    end    
end


path = "lib/test_module.ex"
path 
|> File.read!()
|> Code.string_to_quoted()
|> Insert.print()

# path = "some_path"
# path
#     |> get_file
#     |> get_ast
#     |> add_dependencies_conditionally
#     |> ast_to_string
#     |> string_to_file
#     |> format_file


###############################################
# Variants to Test
###############################################
# Module with 3 functions
# Module with 2 functions with type spect
# Module with 2 functions with docs and variable between functions
# Module with 2 functions one with docs, attributes, type specs other none


###############################################
# Simple Single Function Module AST
###############################################

# {:defmodule, [line: 1],
#  [
#    {:__aliases__, [line: 1], [:TestModule]},
#    [
#      do: {:__block__, [],
#       [
#         {:@, [line: 2],
#          [{:moduledoc, [line: 2], ["Empty module for testing\n"]}]},
#         {:@, [line: 6], [{:doc, [line: 6], ["returns the atom :world\n"]}]},
#         {:@, [line: 9],
#          [
#            {:spec, [line: 9],
#             [
#               {:::, [line: 9],
#                [{:hello, [line: 9], []}, {:keyword, [line: 9], []}]}
#             ]}
#          ]},
#         {:def, [line: 10], [{:hello, [line: 10], nil}, [do: [hello: "world"]]]}
#       ]}
#    ]
#  ]}


# Reference
# * https://elixir-lang.org/getting-started/typespecs-and-behaviours.html
# * https://github.com/elixir-lang/elixir/issues/1109
# * https://www.simonewebdesign.it/how-to-get-the-ast-of-an-elixir-program/
# * https://github.com/elixir-lang/elixir/blob/master/lib/mix/lib/mix/tasks/format.ex
# * https://github.com/elixir-lang/elixir/blob/master/lib/mix/lib/mix/tasks/local.hex.ex
# * http://www.moxleystratton.com/blog/2017/12/28/elixir-abstract-syntax/
# * https://www.zweitag.de/en/blog/technology/elixir-code-reading-blacksmith
# * https://elixirforum.com/t/pass-module-to-a-macro/978