# Functional Symmetry — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dbd52b8e44dc99da745dc6605cd23a3ee9275c6` · SHA-256 `e30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SpectralClosure.SelfAdjoint
import Mathlib.Algebra.Module.LinearMap.Basic

/-!
# Unitary-profile functional symmetry

The exact algebraic theorem sends an eigenpair at `λ` to an eigenpair at
`-λ` when a linear involution anticommutes with the operator.  Analytic
unitarity and arithmetic interpretation remain separate certificate fields.
-/

namespace Mathematics.SpectralClosure

structure FunctionalSymmetry
    (Vector : Type)
    [AddCommGroup Vector] [Module ℝ Vector] where
  operator : Vector →ₗ[ℝ] Vector
  involution : Vector →ₗ[ℝ] Vector
  involutive :
    involution.comp involution = LinearMap.id
  anticommutes :
    operator.comp involution =
      -(involution.comp operator)
  unitaryStatement : Prop
  unitaryStatus : ProofDisposition

def IsEigenpair
    {Vector : Type}
    [AddCommGroup Vector] [Module ℝ Vector]
    (operator : Vector →ₗ[ℝ] Vector)
    (eigenvalue : ℝ)
    (vector : Vector) : Prop :=
  operator vector = eigenvalue • vector

theorem functional_symmetry_reflects_eigenpair
    {Vector : Type}
    [AddCommGroup Vector] [Module ℝ Vector]
    (symmetry : FunctionalSymmetry Vector)
    (eigenvalue : ℝ)
    (vector : Vector)
    (eigenpair :
      IsEigenpair symmetry.operator eigenvalue vector) :
    IsEigenpair symmetry.operator (-eigenvalue)
      (symmetry.involution vector) := by
  unfold IsEigenpair at eigenpair ⊢
  have antiAt :=
    LinearMap.congr_fun symmetry.anticommutes vector
  simp only [LinearMap.comp_apply, LinearMap.neg_apply] at antiAt
  calc
    symmetry.operator (symmetry.involution vector) =
        -(symmetry.involution (symmetry.operator vector)) := antiAt
    _ = -(symmetry.involution (eigenvalue • vector)) := by
          rw [eigenpair]
    _ = (-eigenvalue) • symmetry.involution vector := by
          simp

structure ArithmeticPurityObligation where
  modelCriticalLineStatement : Prop
  arithmeticIdentificationStatement : Prop
  arithmeticStatus : ProofDisposition

end Mathematics.SpectralClosure
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77a3bca32f09a37ff3c481619566fd73dbcd5ba2b7be450554ecb1ecb0bed928 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
