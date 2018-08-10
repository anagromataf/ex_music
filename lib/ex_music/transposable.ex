defprotocol ExMusic.Transposable do
  alias ExMusic.Interval

  @type direction() ::
          :up
          | :down

  @spec transpose(t(), direction(), Interval.t()) :: t()
  def transpose(transposable, direction, interval)
end
