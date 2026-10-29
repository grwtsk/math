# Complete source: GRWTSK.LinearAlgebra.Matrix.HermitianCounterexamples

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed8ed304faed66fbdb005dae65e62c991f6dbc7b` · SHA-256 `9b56218882b4ff223f42ae8f13ccf9f65ee383699d1f504efea979b5696465e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Historical human/machine authoring split unknown. Upstream Lean and mathlib authors,
formalizations and licenses retain their identities.
-/
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Algebra.Order.Archimedean.Real.Basic
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.RiemannHypothesis

/-!
# Scope and sign counterexamples

These guards expose specific invalid inference schemas. No counterexample to RH
is asserted. Four symmetry maps need not give four distinct points on a zero orbit.
-/


/-- A Hermitian matrix can have a strictly negative quadratic direction. -/
theorem hermitian_does_not_imply_positive_semidefinite :
    (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).IsHermitian ∧
      ¬ (- (1 : Matrix (Fin 1) (Fin 1) ℝ)).PosSemidef := by
  constructor
  · simp [Matrix.IsHermitian]
  · intro h
    have hbad := h.dotProduct_mulVec_nonneg (fun _ ↦ 1)
    norm_num [dotProduct, Matrix.mulVec] at hbad




end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7dad570c46858dbc5e63deeed5bb4c1ceb24f25152b25ab2dbb88e5d3700089f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/HermitianCounterexamples__SourceOccurrence65393a074e14bd487433a8b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
