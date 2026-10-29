import BinaryMatrix.Quantization
import Surface.ContinuousAssurance.Refinement

/-!
# Array-backed observational bridge

The prototype executable relation reuses `BinMat.Quantizer.ofMut`.  It proves
only that the array-backed encoder is observed through `BinMatMut.toDecl`.
No transition-level runtime refinement is inferred from this equation.
-/

universe u

namespace DAF.Integration.WorldModelPrototype

/-- The declarative quantizer induced by one mutable matrix encoder. -/
def mutQuantizer
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n) :
    BinMat.Quantizer Cfg m n :=
  BinMat.Quantizer.ofMut encodeMut

/-- The executable observation is exactly its declarative `toDecl` image. -/
@[simp]
theorem mutQuantizer_encode
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n)
    (configuration : Cfg) :
    (mutQuantizer encodeMut).encode configuration =
      (encodeMut configuration).toDecl :=
  rfl

/-- Indistinguishability remains observational, not raw-structure equality. -/
theorem mutQuantizer_indistinguishable_iff
    {Cfg : Type u} {m n : Nat}
    (encodeMut : Cfg → BinMatMut m n)
    (left right : Cfg) :
    (mutQuantizer encodeMut).Indistinguishable left right ↔
      (encodeMut left).toDecl = (encodeMut right).toDecl :=
  Iff.rfl

/-- No full executable transition refinement is submitted by this adapter. -/
def executableWorldModelRefinementStatus :
    Surface.ContinuousAssurance.RuntimeRefinementSubmissionStatus :=
  .notSubmitted

@[simp]
theorem executableWorldModelRefinement_notSubmitted :
    executableWorldModelRefinementStatus = .notSubmitted :=
  rfl

end DAF.Integration.WorldModelPrototype
