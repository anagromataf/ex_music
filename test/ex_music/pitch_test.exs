defmodule ExMusic.Pitch do
  use ExUnit.Case

  alias ExMusic.Pitch
  alias ExMusic.Transposable

  describe "transpose/3" do
    test "up a major third" do
      from = %Pitch{step: :c}
      to = %Pitch{step: :e, alter: :flat}

      assert Transposable.transpose(from, :up, :major_third) == to
    end
  end
end
