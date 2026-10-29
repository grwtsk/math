# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Finite.Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6d4a6735bd836c27fd74e7920c6785e3b95128c` · SHA-256 `21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.Matrix.Hermitian

/-!
# Exact finite Hilbert coordinates for DAF

This module fixes the finite semantic carrier used by the first DAF Hilbert
realization.  A finite Hilbert space is an `L²` Euclidean space over `ℂ`, and
an operator is represented by its exact complex matrix.  No assertion about an
infinite-dimensional `L²` space or an unbounded operator is made here.
-/

noncomputable section

namespace DAF.Hilbert

universe u v

/-- The exact complex Hilbert space with a finite coordinate type. -/
abbrev FiniteHilbert (Index : Type u) [Fintype Index] :=
  EuclideanSpace ℂ Index

/-- A finite operator represented in the canonical Euclidean basis. -/
abbrev FiniteOperator (Row : Type u) (Column : Type v) :=
  Matrix Row Column ℂ

/-- Interpret an exact matrix as a linear map between finite Euclidean spaces. -/
def FiniteOperator.toLinearMap
    {Row : Type u} {Column : Type v}
    [Fintype Row] [Fintype Column] [DecidableEq Column]
    (A : FiniteOperator Row Column) :
    FiniteHilbert Column →ₗ[ℂ] FiniteHilbert Row :=
  Matrix.toEuclideanLin A

/-- Matrix Hermiticity is exactly symmetry of the induced finite linear map. -/
theorem FiniteOperator.isSymmetric_toLinearMap_iff
    {Index : Type u} [Fintype Index] [DecidableEq Index]
    (A : FiniteOperator Index Index) :
    A.toLinearMap.IsSymmetric ↔ A.IsHermitian :=
  Matrix.isSymmetric_toEuclideanLin_iff

/-- The adjoint of the induced map is represented by the conjugate transpose. -/
theorem FiniteOperator.conjTranspose_toLinearMap_eq_adjoint
    {Row : Type u} {Column : Type v}
    [Fintype Row] [Fintype Column]
    [DecidableEq Row] [DecidableEq Column]
    (A : FiniteOperator Row Column) :
    FiniteOperator.toLinearMap A.conjTranspose =
      (FiniteOperator.toLinearMap A).adjoint :=
  Matrix.toEuclideanLin_conjTranspose_eq_adjoint A

end DAF.Hilbert
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a375ca4363c91f62ce770dda76d56231e0abe7491b0483d41b01b11e26517527 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Finite/Variant21e029baaf2201d79d1038fd411b040387834ee59cccc420398c93004b8ba80f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
