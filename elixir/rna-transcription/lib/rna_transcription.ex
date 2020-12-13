defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.map(dna, &rna/1)
    |> List.to_charlist
  end

  defp rna(c) do
    case c do
      ?G -> 'C'
      ?C -> 'G'
      ?T -> 'A'
      ?A -> 'U'
    end
  end
end
