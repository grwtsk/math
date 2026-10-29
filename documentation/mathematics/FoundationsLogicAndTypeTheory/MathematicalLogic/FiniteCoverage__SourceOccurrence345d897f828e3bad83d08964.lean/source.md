# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FiniteCoverage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `580dc548a11900d4884595bdcdd66bd38f364523` · SHA-256 `968daac970e0929941095ce633c662905f762f47c9515c5e861c5d3e7967526d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Developed with OpenAI Codex. Historical human/machine authoring split unknown.
Lean and mathlib retain upstream identities, named authors and licenses.
-/
import Mathlib.Data.Real.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.Logic.FiniteCoverage

/-!
# Finite certificate coverage

Local propositions assemble only over an explicitly covered domain. Neither a
finite range nor a finite sample implies an all-scale statement; the final two
lemmas give exact counterexamples to those scope promotions.
-/


variable {α ι : Type*}


/-- Local proofs and explicit finite coverage assemble a theorem on `domain`. -/
theorem forall_on_of_finite_cover (domain : Set α) (cells : ι → Set α)
    (indices : Finset ι) (P : α → Prop)
    (hcover : ∀ x ∈ domain, ∃ i ∈ indices, x ∈ cells i)
    (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x) :
    ∀ x ∈ domain, P x := by
  intro x hx
  obtain ⟨i, hi, hxi⟩ := hcover x hx
  exact hlocal i hi x hxi



/-- Adding an explicitly proved tail gives a theorem over the entire declared
domain. The tail obligation is a premise, never inferred from finite coverage. -/
theorem forall_on_of_finite_cover_and_tail (domain tail : Set α)
    (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
    (hcover : ∀ x ∈ domain, (∃ i ∈ indices, x ∈ cells i) ∨ x ∈ tail)
    (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x)
    (htail : ∀ x ∈ tail, P x) :
    ∀ x ∈ domain, P x := by
  intro x hx
  rcases hcover x hx with ⟨i, hi, hxi⟩ | hxtail
  · exact hlocal i hi x hxi
  · exact htail x hxtail



/-- Every finite tested real range admits a property that holds throughout it
and fails later on the same ray. -/
theorem finite_range_does_not_imply_ray (a b : ℝ) (hab : a ≤ b) :
    ∃ P : ℝ → Prop, (∀ x ∈ Set.Icc a b, P x) ∧
      ¬ (∀ x ∈ Set.Ici a, P x) := by
  refine ⟨fun x ↦ x ≤ b, ?_, ?_⟩
  · intro x hx
    exact hx.2
  · intro h
    have hbad := h (b + 1) (by simp only [Set.mem_Ici]; linarith)
    linarith



/-- The finite-grid scope error already occurs with an exact two-endpoint
sample: both sampled endpoints satisfy the property while the midpoint fails. -/
theorem endpoints_do_not_cover_interval :
    ∃ P : ℝ → Prop, P 0 ∧ P 1 ∧ ¬ (∀ x ∈ Set.Icc (0 : ℝ) 1, P x) := by
  refine ⟨fun x ↦ x = 0 ∨ x = 1, Or.inl rfl, Or.inr rfl, ?_⟩
  intro h
  have hbad := h (1 / 2) (by constructor <;> norm_num)
  norm_num at hbad




end GRWTSK.Logic.FiniteCoverage
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4f2586df08d111b36539f33064cfa60df44045fc9f5cfabe9f66285a0df5640 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteCoverage__SourceOccurrence345d897f828e3bad83d08964.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
