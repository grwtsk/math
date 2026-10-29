-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ShellIndex.Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ShellIndex.Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"ac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/ZeroSummability.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform
import Mathlib.NumberTheory.LSeries.ZetaZeros
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.Analysis.PSeries
import Mathlib.Tactic
/-!
# Actual zero counting and conditional summability

Every unit radial shell of the actual shifted zeta zeros is finite, including
all analytic-multiplicity occurrence slots. A uniform quartic bound on these
shell counts would imply the frozen sixth-power zero summability target by an
exhaustive shell partition and a convergent p-series majorant.

`QuarticShellCountObligation` has no constructed proof here. The conditional
reduction retains it explicitly; neither local finiteness nor metadata closes
Z2.3. No Riemann Hypothesis assumption or finite-height surrogate is used.
-/

namespace GRWTSK.Analysis.AsymptoticAnalysis.ShellIndex.Variantac95f549721b1b1e1f1650841ea688a3e8fc6d1dc17e1109f8deaf0bcf843530

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace ZeroSummability
open Set Metric
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
noncomputable section

/-- The exact unit radial shell of an actual shifted zero occurrence. -/
def shellIndex (o : ZeroOccurrence) : ℕ := ⌊‖shiftedValue o‖⌋₊
/-- Every occurrence at this shell index is retained, including its multiplicity slot. -/
def ZeroShell (n : ℕ) := {o : ZeroOccurrence // shellIndex o = n}
/-- Actual open-strip zero points in a closed ball about one-half. -/
def ZeroBallPoints (R : ℝ) := {p : ZeroPoint // ‖p.val - (1 / 2 : ℂ)‖ ≤ R}

/-- Discreteness of the actual zeta zero set gives finite points in every compact ball. -/
theorem zeroBallPoints_finite (R : ℝ) : Finite (ZeroBallPoints R) := by
  let T : Set ℂ := closedBall (1 / 2 : ℂ) R ∩ riemannZetaZeros
  have ht : T.Finite := (isCompact_closedBall (1 / 2 : ℂ) R).inter_riemannZetaZeros_finite
  have : Finite T := ht.to_subtype
  let f : ZeroBallPoints R → T := fun p ↦ ⟨p.val.val, by
    constructor
    · simpa only [mem_closedBall, dist_eq_norm] using p.property
    · exact p.val.property.1⟩
  apply Finite.of_injective f
  intro p q h
  apply Subtype.ext
  apply Subtype.ext
  exact congrArg (fun t : T ↦ t.val) h

/-- Finite points and finite analytic multiplicities give finite occurrence shells. -/
theorem zeroShell_finite (n : ℕ) : Finite (ZeroShell n) := by
  have := zeroBallPoints_finite (n + 1)
  let T := (Σ p : ZeroBallPoints (n + 1), Fin (multiplicity p.val))
  let f : ZeroShell n → T := fun o ↦ ⟨⟨o.val.1, by
    have hb := Nat.lt_floor_add_one ‖shiftedValue o.val‖
    change ‖shiftedValue o.val‖ < (shellIndex o.val : ℝ)+1 at hb
    rw [o.property] at hb
    exact hb.le⟩, o.val.2⟩
  apply Finite.of_injective f
  intro p q h
  apply Subtype.ext
  exact congrArg (fun t : T ↦ (⟨t.1.val, t.2⟩ : ZeroOccurrence)) h

/-- A counting estimate over every actual analytic-multiplicity occurrence, not a height cutoff.
This exact growth proposition has no constructed proof in this module. -/
def QuarticShellCountObligation : Prop :=
  ∃ C : ℝ, 0 < C ∧ ∀ n : ℕ, (Nat.card (ZeroShell n) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4

/-- The exact sixth-power weight from the frozen all-zero summability obligation. -/
def weight (o : ZeroOccurrence) : ℝ := (1 + ‖shiftedValue o‖) ^ (-6:ℝ)

/-- Every actual occurrence weight is nonnegative. -/
theorem weight_nonneg (o : ZeroOccurrence) : 0 ≤ weight o :=
  Real.rpow_nonneg (by positivity) _

/-- The floor-defined shell gives the precise pointwise p-series majorant. -/
theorem shell_weight_le (n : ℕ) (o : ZeroShell n) :
    weight o.val ≤ (n + 1 : ℝ) ^ (-6 : ℝ) := by
  have hb := Nat.floor_le (norm_nonneg (shiftedValue o.val))
  change (shellIndex o.val : ℝ) ≤ ‖shiftedValue o.val‖ at hb
  rw [o.property] at hb
  exact Real.rpow_le_rpow_of_nonpos (by positivity) (by linarith) (by norm_num)

/-- Counting every occurrence bounds the entire shell sum by a second-power majorant. -/
theorem shell_sum_bound {C : ℝ}
    (hc : ∀ n : ℕ, (Nat.card (ZeroShell n) : ℝ) ≤ C * (n + 1 : ℝ) ^ 4) (n : ℕ) :
    (∑' o : ZeroShell n, weight o.val) ≤ C * (n + 1 : ℝ) ^ (-2 : ℝ) := by
  have := zeroShell_finite n
  let := Fintype.ofFinite (ZeroShell n)
  calc
    (∑' o : ZeroShell n, weight o.val) ≤ ∑' _o : ZeroShell n, (n + 1 : ℝ) ^ (-6 : ℝ) :=
      Summable.tsum_le_tsum (shell_weight_le n) (Summable.of_finite) (Summable.of_finite)
    _ = (Nat.card (ZeroShell n) : ℝ) * (n + 1 : ℝ) ^ (-6 : ℝ) := by
      simp [tsum_fintype, Nat.card_eq_fintype_card]
    _ ≤ (C * (n + 1 : ℝ) ^ 4) * (n + 1 : ℝ) ^ (-6 : ℝ) :=
      mul_le_mul_of_nonneg_right (hc n) (Real.rpow_nonneg (by positivity) _)
    _ = C * (n + 1 : ℝ) ^ (-2 : ℝ) := by
      rw [mul_assoc, ← Real.rpow_natCast (n + 1 : ℝ) 4, ← Real.rpow_add (by positivity)]
      norm_num

/-- The count estimate, when proved, suffices for the exact infinite source sum. -/
theorem zero_summability_of_quartic_shell_count (h : QuarticShellCountObligation) :
    ZeroSideTargets.ZeroSummabilityObligation := by
  obtain ⟨C, _hC, hbound⟩ := h
  change Summable weight
  have hm : Summable (fun n : ℕ ↦ C * (n + 1 : ℝ) ^ (-2 : ℝ)) := by
    have hh : Summable (fun n : ℕ ↦ (n : ℝ) ^ (-2 : ℝ)) :=
      Real.summable_nat_rpow.mpr (by norm_num)
    simpa only [Nat.cast_add, Nat.cast_one] using
      ((summable_nat_add_iff 1).mpr hh).mul_left C
  have hs : Summable (fun n : ℕ ↦ ∑' o : ZeroShell n, weight o.val) :=
    Summable.of_nonneg_of_le (fun n ↦ tsum_nonneg (fun o ↦ weight_nonneg o.val))
      (shell_sum_bound hbound) hm
  apply (summable_partition (f := weight) (s := fun n ↦ {o | shellIndex o = n})
    weight_nonneg (fun o ↦ ⟨shellIndex o, rfl, fun n hn ↦ hn.symm⟩)).mpr
  refine ⟨?_, hs⟩
  intro n
  change Summable (fun o : ZeroShell n ↦ weight o.val)
  have := zeroShell_finite n
  exact Summable.of_finite

end
end ZeroSummability
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
