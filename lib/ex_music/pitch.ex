defmodule ExMusic.Pitch do
  @type step() ::
          :c
          | :d
          | :e
          | :f
          | :g
          | :a
          | :b

  @type alter() :: number()
  @type octave() :: non_neg_integer()

  @type t() :: %__MODULE__{
          step: step(),
          alter: alter(),
          octave: octave() | nil
        }

  @enforce_keys [:step]

  defstruct step: nil,
            alter: 0,
            octave: nil
end
