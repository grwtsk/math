import Mathematics.SpectralClosure.CrossedProduct

/-!
# Finite self-adjoint coefficient check

Over real coefficients, self-adjointness is symmetry of the represented finite
matrix.  The construction theorem consumes an explicit coefficient-symmetry
certificate.
-/

namespace Mathematics.SpectralClosure

abbrev FiniteOperator (Index : Type) :=
  Index → Index → ℝ

def IsSelfAdjoint
    {Index : Type}
    (operator : FiniteOperator Index) : Prop :=
  ∀ row column, operator row column = operator column row

def diagonalOperator
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ) :
    FiniteOperator Index :=
  fun row column =>
    if row = column then potential row else 0

def addOperator
    {Index : Type}
    (left right : FiniteOperator Index) :
    FiniteOperator Index :=
  fun row column => left row column + right row column

theorem diagonalOperator_selfAdjoint
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ) :
    IsSelfAdjoint (diagonalOperator potential) := by
  intro row column
  by_cases same : row = column
  · subst column
    rfl
  · have reverse : column ≠ row := Ne.symm same
    simp [diagonalOperator, same, reverse]

structure SelfAdjointCoefficientCertificate
    {Index : Type}
    (transport : FiniteOperator Index) where
  transportSymmetry :
    ∀ row column,
      transport row column = transport column row
  proofRef : SpectralId

theorem crossedProductOperator_selfAdjoint
    {Index : Type} [DecidableEq Index]
    (potential : Index → ℝ)
    (transport : FiniteOperator Index)
    (certificate : SelfAdjointCoefficientCertificate transport) :
    IsSelfAdjoint
      (addOperator
        (diagonalOperator potential)
        transport) := by
  intro row column
  unfold addOperator
  rw [diagonalOperator_selfAdjoint potential row column]
  rw [certificate.transportSymmetry row column]

structure JordanSemisimplicityObligation
    {Index : Type}
    (operator : FiniteOperator Index) where
  diagonalizableStatement : Prop
  zeroJordanContributionStatement : Prop
  status : ProofDisposition

end Mathematics.SpectralClosure
