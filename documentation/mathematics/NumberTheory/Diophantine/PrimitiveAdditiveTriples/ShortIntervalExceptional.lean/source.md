# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ShortIntervalExceptional

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fcdd56dd462c694552c9c4aef2c7080ce594c21` · SHA-256 `b024f532982ada05ec6dbadcfff95d862d2cb44606723091148f2e17bcb1f0da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors.
SPDX-License-Identifier: MIT

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Section 2 and Proposition 2.1.

The source paper credits Bhavik Mehta for Lean assistance on an earlier
version. The finite dyadic-box infrastructure imported below retains the
Bhavik Mehta--Arend Mellendijk attribution of the earlier formalization.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DyadicAnatomicPublic
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Radical
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators

namespace ShortIntervalExceptional

open AnatomicBoxes DyadicAnatomicCover

/-- The finite short-interval exceptional set counted by `N*ₗ(X)` in the
source paper: `c ≤ X`, `c ≥ X/2`, and the radical lies in
`[c^lam/2, c^lam)`. -/
noncomputable def nStarTriples (lam : ℝ) (X : ℕ) :
    Finset PrimitiveAdditiveTriple :=
  (boundedTriples X).filter fun t ↦
    X ≤ 2 * t.c ∧
    (t.radical : ℝ) < (t.c : ℝ) ^ lam ∧
    (t.c : ℝ) ^ lam ≤ 2 * (t.radical : ℝ)

@[simp]
theorem mem_nStarTriples {lam : ℝ} {X : ℕ}
    {t : PrimitiveAdditiveTriple} :
    t ∈ nStarTriples lam X ↔
      t.c ≤ X ∧
      X ≤ 2 * t.c ∧
      (t.radical : ℝ) < (t.c : ℝ) ^ lam ∧
      (t.c : ℝ) ^ lam ≤ 2 * (t.radical : ℝ) := by
  classical
  simp [nStarTriples]

/-- The source paper's short-interval counting function. -/
noncomputable def nStarCount (lam : ℝ) (X : ℕ) : ℕ :=
  (nStarTriples lam X).card

theorem nStarTriples_subset_boundedTriples (lam : ℝ) (X : ℕ) :
    nStarTriples lam X ⊆ boundedTriples X := by
  classical
  exact Finset.filter_subset _ _

/-- The exact finite anatomic-box cover for `N*ₗ(X)`, before imposing the
additional scale inequalities extracted from the exceptional condition. -/
theorem nStarTriples_subset_covered
    {ε : ℝ} (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (lam : ℝ) (X : ℕ) :
    nStarTriples lam X ⊆
      coveredTriples (parameterCandidates d X (residualCap ε X)) := by
  exact (nStarTriples_subset_boundedTriples lam X).trans
    (boundedTriples_subset_covered hε_pos hε hd X)

/-- Pigeonhole-ready finite cardinality estimate for the short-interval
exceptional set. -/
theorem nStarCount_le_parameter_mul_sup
    {ε : ℝ} (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (lam : ℝ) (X : ℕ) :
    nStarCount lam X ≤
      (parameterCandidates d X (residualCap ε X)).card *
        (parameterCandidates d X (residualCap ε X)).sup boxCard := by
  unfold nStarCount
  exact (Finset.card_le_card
    (nStarTriples_subset_covered hε_pos hε hd lam X)).trans
      (card_coveredTriples_le_card_mul_sup _)

/-- Fully explicit finite parameter-count estimate for `N*ₗ(X)`. -/
theorem nStarCount_le_explicit_parameter_bound
    {ε : ℝ} (hε_pos : 0 < ε) (hε : ε < 1 / 2)
    {d : ℕ} (hd : d = ⌊5 / 2 * ε⁻¹ ^ 2⌋₊)
    (lam : ℝ) (X : ℕ) :
    nStarCount lam X ≤
      ((Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3) *
        (parameterCandidates d X (residualCap ε X)).sup boxCard := by
  calc
    nStarCount lam X ≤
        (parameterCandidates d X (residualCap ε X)).card *
          (parameterCandidates d X (residualCap ε X)).sup boxCard :=
      nStarCount_le_parameter_mul_sup hε_pos hε hd lam X
    _ ≤ ((Nat.log 2 X + 1) ^ (3 * d) * (residualCap ε X) ^ 3) *
          (parameterCandidates d X (residualCap ε X)).sup boxCard := by
      gcongr
      exact card_parameterCandidates_le d X (residualCap ε X)

end ShortIntervalExceptional

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed6a6693a3278beecab137c3be75b5a71c95949ee4f41389adc12b7e45c0cb63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ShortIntervalExceptional.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
