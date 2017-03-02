defmodule ElixirScript.Experimental.Backend do
  alias ElixirScript.Experimental.Module
  alias ESTree.Tools.Builder, as: J

  def compile(line, file, module, attrs, defs, unreachable, opts) do

    # Print all arguments
    IO.inspect binding()
    IO.inspect Module.compile(line, file, module, attrs, defs, unreachable, opts)
    
    # Invoke the default backend - it returns the compiled beam binary
    :elixir_erl.compile(line, file, module, attrs, defs, unreachable, opts)
  end
end