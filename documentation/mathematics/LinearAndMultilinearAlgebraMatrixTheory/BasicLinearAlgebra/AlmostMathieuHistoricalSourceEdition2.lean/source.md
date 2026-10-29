# Complete source: GRWTSK.Algebra.LinearAlgebra.AlmostMathieu

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `582e6d14b4efd8c14002738eb230efcc527df47d` · SHA-256 `2857809dee0c7a93715a0d0cd54fca7c298da336900b41913f3af8a091660180`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Model source: Artur Avila, Yoram Last, Mira Shamis, Qi Zhou, arXiv:2110.07974v2, (1.1).
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.SchrodingerTransfer
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.LinearAlgebra.Matrix.Trace

set_option autoImplicit false

noncomputable section
namespace GRWTSK.LinearAlgebra.AlmostMathieu
open GRWTSK.LinearAlgebra.SchrodingerTransfer

/-- The literal almost Mathieu potential, with integer sites and the unscaled phase. -/
def potential (α coupling θ : ℝ) (n : ℤ) : ℝ :=
  2 * coupling * Real.cos (2 * Real.pi * α * n + θ)

/-- The exact transfer with state coordinates `(current, previous)`. -/
def transfer (E α coupling θ : ℝ) (n : ℤ) : Matrix (Fin 2) (Fin 2) ℝ :=
  schrodingerTransfer E (potential α coupling θ n)

/-- Equation (1.1)'s eigenvalue recurrence returns to the canonical transfer state. -/
theorem recurrence_iff_transfer (E α coupling θ : ℝ) (n : ℤ) (previous current next : ℝ) :
    next + previous + potential α coupling θ n * current = E * current ↔
      rawState next current = (transfer E α coupling θ n).mulVec (rawState current previous) :=
  schrodinger_recurrence_iff_transfer E (potential α coupling θ n) previous current next

/-- Determinant one is an algebraic identity for every real model parameter. -/
theorem det_transfer (E α coupling θ : ℝ) (n : ℤ) :
    (transfer E α coupling θ n).det = 1 :=
  det_schrodingerTransfer E (potential α coupling θ n)

/-- Determinant one alone gives no all-energy trace bound, even for zero coupling.
No assertion that energy three belongs to the spectrum is made. -/
theorem det_one_does_not_bound_trace :
    (transfer 3 0 0 0 0).det = 1 ∧
      2 < |Matrix.trace (transfer 3 0 0 0 0)| := by
  refine ⟨det_transfer _ _ _ _ _, ?_⟩
  norm_num [transfer, potential, schrodingerTransfer, Matrix.trace, Fin.sum_univ_two]

end GRWTSK.LinearAlgebra.AlmostMathieu
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e063a1a8fc186a1ab27e6b83ecb88632804859387dca883855b76a3239049e1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrenced6a077be2ad34c2f55ad1b69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
