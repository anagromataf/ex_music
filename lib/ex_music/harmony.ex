defmodule ExMusic.Harmony do
  alias ExMusic.Pitch

  @type kind() ::
          :major
          | :minor
          | :augmented
          | :diminished
          | :dominant
          | :major_seventh
          | :minor_seventh
          | :diminished_seventh
          | :augmented_sevent
          | :half_diminished
          | :major_minor
          | :major_sixth
          | :minor_sixth
          | :dominant_ninth
          | :major_nint
          | :minor_ninth
          | :dominant_11th
          | :major_11th
          | :minor_11th
          | :dominant_13th
          | :major_13th
          | :minor_13th
          | :suspended_second
          | :suspended_second

  @type t() :: %__MODULE__{
          root: Pitch.t(),
          kind: kind(),
          bass: Pitch.t() | nil
        }

  @enforce_keys [:root, :kind]

  defstruct root: nil,
            kind: nil,
            bass: nil
end
