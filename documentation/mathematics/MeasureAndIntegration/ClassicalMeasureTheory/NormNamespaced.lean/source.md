# Norm Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bae2b3f7427d8ee7a8c4b332c14aa6952c981121` · SHA-256 `336674e797954a7370f83de938598c37dec7d6ca41072bf41912acef029e865c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.LintegralOfRealLeLintegralEnorm.Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.LintegralOfRealLeLintegralEnorm.Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea","mathematical_subject":"Analysis.Integration","original_sha256":"8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/MeasureTheory/Integral/Lebesgue/Norm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Analysis.RealAnalysis.Integration.LintegralOfRealLeLintegralEnorm.Variant8b5f8c92dd803fed4171327dca2247679ddccb7d6308db2e19d7b8b1861ae5ea

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de309b180ebfe26a3f089b5c78528ec9aac711703be9bbbc557235b4169b96e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Norm/Variant3d0007256f812ebb3d76ec1d3e779fe466c1324bd5468ae4c51b013153165b65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
