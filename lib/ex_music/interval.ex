defmodule ExMusic.Interval do
  @type t() ::
          :perfect_prime
          | :minor_second
          | :major_second
          | :minor_third
          | :major_third
          | :perfect_fourth
          | :tritone
          | :perfect_fifth
          | :minor_sixth
          | :major_sixth
          | :minor_seventh
          | :major_seventh
          | :perfect_ovtave

  @spec half_steps(t()) :: non_neg_integer()
  def half_steps(:perfect_unison), do: 0
  def half_steps(:minor_second), do: 1
  def half_steps(:major_second), do: 2
  def half_steps(:minor_third), do: 3
  def half_steps(:major_third), do: 4
  def half_steps(:perfect_fourth), do: 5
  def half_steps(:tritone), do: 6
  def half_steps(:perfect_fifth), do: 7
  def half_steps(:minor_sixth), do: 8
  def half_steps(:major_sixth), do: 9
  def half_steps(:minor_seventh), do: 10
  def half_steps(:major_seventh), do: 11
  def half_steps(:perfect_ovtave), do: 12
end
