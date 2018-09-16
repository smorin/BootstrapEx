# BootstrapEx


Steve Morin [7:59 PM]
That part is good
My question is how to read the mix file
Determine if the dependency is there then add it to the existing mix file if it’s missing

fishcakez [8:00 PM]
Read?
Ah that's tricky

Steve Morin [8:00 PM]
Which would require being able to read the source file
Yes
Sorry fiancé is calling me

fishcakez [8:00 PM]
That can be done by using elixirs parsers I think

Steve Morin [8:00 PM]
I’ll have to be back

fishcakez [8:00 PM]
Ok
I think with formatter get file AST using string to quoted, add to deps function, convert AST to string, format file with mix (edited)
You could do similar thing that git add -p does where it asks yes or no for changes

path = "some_path"
path
    |> get_file
    |> get_ast
    |> add_dependencies_conditionally
    |> ast_to_string
    |> string_to_file
    |> format_file