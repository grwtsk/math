import Surface.Legacy.BinaryLogicMatrix.Token

namespace Surface.Legacy

structure MatrixSimilarity where
  numerator : Nat
  denominator : Nat
  denominator_pos : 0 < denominator
  bounded : numerator ≤ denominator

def similarityValue (s : MatrixSimilarity) : Rat :=
  (s.numerator : Rat) / (s.denominator : Rat)

def similarityGE
    (s : MatrixSimilarity)
    (threshold : Rat) : Prop :=
  threshold ≤ similarityValue s

inductive SimilarityMode
| supportJaccard
| normalizedHammingComplement
| factorOverlap
| spectralKernelOverlap
| declaredCustomExact
deriving DecidableEq, Repr

structure SimilarityThreshold where
  value : Rat
  lowerBound : 0 ≤ value
  upperBound : value ≤ 1

theorem matrixSimilarity_denominator_ne_zero
    (s : MatrixSimilarity) :
    s.denominator ≠ 0 := by
  exact Nat.ne_of_gt s.denominator_pos

theorem matrixSimilarity_operational_boundary
    (s : MatrixSimilarity) :
    s.numerator ≤ s.denominator := by
  exact s.bounded

end Surface.Legacy
