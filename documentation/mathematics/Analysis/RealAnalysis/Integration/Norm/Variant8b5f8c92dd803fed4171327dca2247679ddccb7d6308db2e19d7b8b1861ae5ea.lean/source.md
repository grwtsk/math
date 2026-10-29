# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Norm.Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff7cb88df88fc52a309051e9dcceacbd73850915` · SHA-256 `8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Analysis.Normed.Group.Basic
import Mathlib.MeasureTheory.Integral.Lebesgue.Basic

/-!
# Interactions between the Lebesgue integral and norms
-/

namespace MeasureTheory

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}

theorem lintegral_ofReal_le_lintegral_enorm (f : α → ℝ) :
    ∫⁻ x, ENNReal.ofReal (f x) ∂μ ≤ ∫⁻ x, ‖f x‖ₑ ∂μ := by
  simp_rw [← ofReal_norm_eq_enorm]
  refine lintegral_mono fun x => ENNReal.ofReal_le_ofReal ?_
  rw [Real.norm_eq_abs]
  exact le_abs_self (f x)

@[deprecated (since := "2025-01-17")]
alias lintegral_ofReal_le_lintegral_nnnorm := lintegral_ofReal_le_lintegral_enorm

theorem lintegral_enorm_of_ae_nonneg {f : α → ℝ} (h_nonneg : 0 ≤ᵐ[μ] f) :
    ∫⁻ x, ‖f x‖ₑ ∂μ = ∫⁻ x, .ofReal (f x) ∂μ := by
  apply lintegral_congr_ae
  filter_upwards [h_nonneg] with x hx
  rw [Real.enorm_eq_ofReal hx]

@[deprecated (since := "2025-01-17")]
alias lintegral_nnnorm_eq_of_ae_nonneg := lintegral_enorm_of_ae_nonneg

theorem lintegral_enorm_of_nonneg {f : α → ℝ} (h_nonneg : 0 ≤ f) :
    ∫⁻ x, ‖f x‖ₑ ∂μ = ∫⁻ x, .ofReal (f x) ∂μ :=
  lintegral_enorm_of_ae_nonneg <| .of_forall h_nonneg

@[deprecated (since := "2025-01-17")]
alias lintegral_nnnorm_eq_of_nonneg := lintegral_enorm_of_nonneg

end MeasureTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=933a2ac4601657ae36499f5e8f40adfe037d0cc4c2b7158fd2a379897662b368 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
