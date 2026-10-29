# Complete source: GRWTSK.Algebra.LinearAlgebra.Core.Variant6b0bbf9cef099b6461d0dcbc86d82e5938750bf3ca4dbe57ab95561429364a35

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45d7e7e53370552c3a2f40b4174a6d0d692a70cc` · SHA-256 `6b0bbf9cef099b6461d0dcbc86d82e5938750bf3ca4dbe57ab95561429364a35`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Complex.Order
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# Positive kernels

`PositiveKernel` is indexed by an arbitrary type.  It imposes no assumptions
about modules, source paths, namespaces, or the project being inspected.
Mathlib's `Matrix.PosSemidef` quantifies over finitely supported coefficient
families, so the definition also works for infinite ambient index types.
-/

noncomputable section

namespace Mathematics.Kernel

open scoped ComplexOrder

universe u

/-- A Hermitian positive-semidefinite complex kernel. -/
structure PositiveKernel (Index : Type u) where
  matrix : Matrix Index Index ℂ
  positiveSemidefinite : matrix.PosSemidef

namespace PositiveKernel

variable {Index : Type u}

instance : CoeFun (PositiveKernel Index) (fun _ ↦ Index → Index → ℂ) where
  coe kernel := kernel.matrix

/-- Positive semidefiniteness includes Hermitian symmetry. -/
theorem isHermitian (kernel : PositiveKernel Index) :
    kernel.matrix.IsHermitian :=
  kernel.positiveSemidefinite.isHermitian

/-- Exact complex Hermitian symmetry. -/
@[simp]
theorem conj_apply_symm (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel j i) = kernel i j := by
  exact kernel.isHermitian.apply i j

/-- Matrix-spelled Hermitian symmetry, useful under finite sums. -/
@[simp]
theorem conj_matrix_apply_symm
    (kernel : PositiveKernel Index) (i j : Index) :
    star (kernel.matrix j i) = kernel.matrix i j :=
  kernel.isHermitian.apply i j

/-- The quadratic form is nonnegative on every finite combination. -/
theorem quadratic_nonnegative
    (kernel : PositiveKernel Index) (coefficients : Index →₀ ℂ) :
    0 ≤ coefficients.sum fun i ai ↦
      coefficients.sum fun j aj ↦ star ai * kernel i j * aj :=
  kernel.positiveSemidefinite.2 coefficients

end PositiveKernel

end Mathematics.Kernel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c8a152475b9e82bf82787a90c44778c2b2bd47efdb3c766f5bff652460e5a49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Core/Variant6b0bbf9cef099b6461d0dcbc86d82e5938750bf3ca4dbe57ab95561429364a35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
