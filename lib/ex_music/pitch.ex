defmodule ExMusic.Pitch do
  @type step() ::
          :c
          | :d
          | :e
          | :f
          | :g
          | :a
          | :b

  @type alter() ::
          :double_flat
          | :flat
          | :sharp
          | :double_sharp

  @type octave() :: non_neg_integer()

  @type t() :: %__MODULE__{
          step: step(),
          alter: alter() | nil,
          octave: octave() | nil
        }

  @enforce_keys [:step]

  defstruct step: nil,
            alter: nil,
            octave: nil
end
