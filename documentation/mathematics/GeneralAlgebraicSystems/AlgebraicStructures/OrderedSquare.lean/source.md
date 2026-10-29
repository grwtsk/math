# Complete source: GRWTSK.Algebra.BigOperators.OrderedSquare

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a3c07fd53b112346fe548541c599437714722e7` · SHA-256 `56b829a95136512e70db48c44acdb813653ceba74d564231af821ecc1998d00f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; OpenAI Codex formalization assistance.
Mathlib imports retain upstream authorship and Apache-2.0 licensing.
Classical constructions and conditional adapters; no originality claim. -/
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Real.Basic

/-! Exact waveform roles. Mathematical proof is never an operational credential.
This module proves local algebra/analysis and conditional returns, not P04.
Angular-frequency Parseval needs a separately checked convention adapter. -/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.Waveform
open scoped BigOperators

/-- Completed finite square, retaining all ordered off-diagonal terms. -/
theorem finite_ordered_energy {ι : Type*} [DecidableEq ι]
    (S : Finset ι) (x : ι → ℝ) :
    (∑ i ∈ S, x i)^2 = (∑ i ∈ S, (x i)^2) +
      ∑ i ∈ S, ∑ j ∈ S, if i ≠ j then x i * x j else 0 := by
  rw [pow_two, Finset.sum_mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  have hd : x i ^ 2 = ∑ j ∈ S, if i = j then x i * x j else 0 := by simp [hi,pow_two]
  rw [hd, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  by_cases h : i=j <;> simp [h]


end GRWTSK.Analysis.Waveform
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7757a32271b89edcd37f7e2fd09cf25487b5b4fc70f297ba233714abc27e3274 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/BigOperators/OrderedSquare.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
