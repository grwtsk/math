-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.HasSumIffHasSumCompl.Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.HasSumIffHasSumCompl.Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"e9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Topology/Algebra/InfiniteSum/GroupCompletion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Mitchell Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mitchell Lee
-/
import Mathlib.Topology.Algebra.GroupCompletion
import Mathlib.Topology.Algebra.InfiniteSum.Group

/-!
# Infinite sums in the completion of a topological group
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.HasSumIffHasSumCompl.Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59

open UniformSpace.Completion

variable {α β : Type*} [AddCommGroup α] [UniformSpace α] [IsUniformAddGroup α]

/-- A function `f` has a sum in an uniform additive group `α` if and only if it has that sum in the
completion of `α`. -/
theorem hasSum_iff_hasSum_compl (f : β → α) (a : α) :
    HasSum (toCompl ∘ f) a ↔ HasSum f a := (isDenseInducing_toCompl α).hasSum_iff f a

/-- A function `f` is summable in a uniform additive group `α` if and only if it is summable in
`Completion α` and its sum in `Completion α` lies in the range of `toCompl : α →+ Completion α`. -/
theorem summable_iff_summable_compl_and_tsum_mem (f : β → α) :
    Summable f ↔ Summable (toCompl ∘ f) ∧ ∑' i, toCompl (f i) ∈ Set.range toCompl :=
  (isDenseInducing_toCompl α).summable_iff_tsum_comp_mem_range f

/-- A function `f` is summable in a uniform additive group `α` if and only if the net of its partial
sums is Cauchy and its sum in `Completion α` lies in the range of `toCompl : α →+ Completion α`.
(The condition that the net of partial sums is Cauchy can be checked using
`cauchySeq_finset_iff_sum_vanishing` or `cauchySeq_finset_iff_tsum_vanishing`.) -/
theorem summable_iff_cauchySeq_finset_and_tsum_mem (f : β → α) :
    Summable f ↔ CauchySeq (fun s : Finset β ↦ ∑ b ∈ s, f b) ∧
      ∑' i, toCompl (f i) ∈ Set.range toCompl := by
  classical
  constructor
  · rintro ⟨a, ha⟩
    exact ⟨ha.cauchySeq, ((summable_iff_summable_compl_and_tsum_mem f).mp ⟨a, ha⟩).2⟩
  · rintro ⟨h_cauchy, h_tsum⟩
    apply (summable_iff_summable_compl_and_tsum_mem f).mpr
    constructor
    · apply summable_iff_cauchySeq_finset.mpr
      simp_rw [Function.comp_apply, ← map_sum]
      exact h_cauchy.map (uniformContinuous_coe α)
    · exact h_tsum

/-- If a function `f` is summable in a uniform additive group `α`, then its sum in `α` is the same
as its sum in `Completion α`. -/
theorem Summable.toCompl_tsum {f : β → α} (hf : Summable f) : ∑' i, toCompl (f i) = ∑' i, f i :=
  (hf.map_tsum toCompl (continuous_coe α)).symm
