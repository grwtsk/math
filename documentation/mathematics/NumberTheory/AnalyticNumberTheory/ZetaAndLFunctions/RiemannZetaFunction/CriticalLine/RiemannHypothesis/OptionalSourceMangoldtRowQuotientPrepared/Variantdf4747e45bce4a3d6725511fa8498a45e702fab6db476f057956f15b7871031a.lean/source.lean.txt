-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMangoldtColumnEqQuotientRow.Variantd346c85b657b09541f5904b7952bec92d95b6af7a1fbb6f0b6713b9c7f190ddd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d346c85b657b09541f5904b7952bec92d95b6af7a1fbb6f0b6713b9c7f190ddd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualMangoldtColumnEqQuotientRow.Variantd346c85b657b09541f5904b7952bec92d95b6af7a1fbb6f0b6713b9c7f190ddd","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d346c85b657b09541f5904b7952bec92d95b6af7a1fbb6f0b6713b9c7f190ddd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle26/principal-column-quotient-support-v1/OptionalSourceMangoldtRowQuotient.prepared.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointMangoldtColumn

/-! Optional future row restriction, UNCOMPILED and outside the fixed three-root unit. -/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualMangoldtColumnEqQuotientRow.Variantd346c85b657b09541f5904b7952bec92d95b6af7a1fbb6f0b6713b9c7f190ddd

namespace FormalResearch.RiemannHypothesis.SourceMangoldtRowQuotientFuture

open ArithmeticFunction
open SourceVaughanHankel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel

noncomputable section

/-- The quotient endpoint on the unchanged literal Mangoldt row is inclusive. -/
theorem actual_mangoldt_column_eq_quotient_row (A : ℝ) (hA : 1 ≤ A) (k : ℕ)
    (hk : vaughanCutoff A + 1 ≤ k) :
    (∑ m ∈ longInventory A,
      vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ)) =
      ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A / k),
        vonMangoldt m * sourcePlainWeight A ((m * k : ℕ) : ℝ) := by
  classical
  have hkpos : 0 < k := by omega
  have hsub : Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A / k) ⊆
      longInventory A := by
    intro m hm
    rcases Finset.mem_Ioc.mp hm with ⟨hu, hm⟩
    exact Finset.mem_Ioc.mpr ⟨hu, hm.trans (Nat.div_le_self _ _)⟩
  symm
  apply Finset.sum_subset hsub
  intro m hm hnot
  have hu := (Finset.mem_Ioc.mp hm).1
  have hdiv : sourceKernelCutoff A / k < m := by
    by_contra hn
    exact hnot (Finset.mem_Ioc.mpr ⟨hu, by omega⟩)
  have hcut : sourceKernelCutoff A < m * k := (Nat.div_lt_iff_lt_mul hkpos).1 hdiv
  rw [sourcePlainWeight_zero_of_cutoff_lt A hA (m * k) hcut]
  exact mul_zero _

end
end FormalResearch.RiemannHypothesis.SourceMangoldtRowQuotientFuture
