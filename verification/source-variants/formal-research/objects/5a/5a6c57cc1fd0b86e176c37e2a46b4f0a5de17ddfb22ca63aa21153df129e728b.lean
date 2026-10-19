import Surface.Legacy.BinaryLogicMatrix.Core

namespace Surface.Legacy

structure TokenAlphabet where
  size : Nat
  symbol : Fin size → String

structure TokenSequence (A : TokenAlphabet) where
  length : Nat
  token : Fin length → Fin A.size

structure TokenBinaryMatrixEncoding
    (A : TokenAlphabet)
    (s : TokenSequence A) where
  rows : Nat
  cols : Nat
  matrix : BinaryLogicMatrix rows cols
  sound : Prop
  claimBoundary : String

theorem tokenBinaryMatrixEncoding_boundary
    {A : TokenAlphabet}
    {s : TokenSequence A}
    (E : TokenBinaryMatrixEncoding A s) :
    E.sound → E.sound := by
  intro h
  exact h

theorem tokenSequence_length_nonneg
    {A : TokenAlphabet}
    (s : TokenSequence A) :
    0 ≤ s.length := by
  exact Nat.zero_le s.length

end Surface.Legacy
