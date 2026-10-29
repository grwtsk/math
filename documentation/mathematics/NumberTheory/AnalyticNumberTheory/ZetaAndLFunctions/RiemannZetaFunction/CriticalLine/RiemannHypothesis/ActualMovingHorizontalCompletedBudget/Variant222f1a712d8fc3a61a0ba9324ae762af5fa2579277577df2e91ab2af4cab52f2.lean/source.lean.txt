-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCompletedHorizontalIntegral.Variant5d534fa0e967305ca3539a9b040fd322c6b14dada66152dd0458e78a980f2a07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d534fa0e967305ca3539a9b040fd322c6b14dada66152dd0458e78a980f2a07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualCompletedHorizontalIntegral.Variant5d534fa0e967305ca3539a9b040fd322c6b14dada66152dd0458e78a980f2a07","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"5d534fa0e967305ca3539a9b040fd322c6b14dada66152dd0458e78a980f2a07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/ActualMovingHorizontalCompletedBudget-native01/ActualMovingHorizontalCompletedBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCompletedHorizontalBudget
import SourceActualGoodHeightContour

/-!
The actual completed-zeta horizontal integrals have a source-specific budget
uniform in the moving real scale. The good heights, gamma factors, functional
reflection and exact ordinary-square source kernel remain. All crossed-zero
residues and signed vertical heads remain outside this estimate.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCompletedHorizontalIntegral.Variant5d534fa0e967305ca3539a9b040fd322c6b14dada66152dd0458e78a980f2a07

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualMovingHorizontalCompletedBudget
open MeasureTheory Set Complex Topology Filter
open Zeta23 Zeta23.WeilEF
open SourcePairing ActualCorrelationOppositeHalf ActualBumpHorizontalStripBudget
open ActualCompletedHorizontalBudget SourceActualGoodHeightContour
open SourceActualBumpMovingHeight
noncomputable section

/-- The literal actual source integral on either completed-zeta horizontal segment. -/
def actualCompletedHorizontalIntegral (A c y : ℝ) : ℂ :=
  HIntegral (fun s => actualBilateralCorrelationTransform A (s-1/2)*
    logDeriv completedRiemannZeta s) (1-c) c y

/-- A moving height gives an extra exponential factor for the actual sixth-power tail. -/
theorem actual_exponential_height_ratio_le (v R : ℝ) (hR : Real.exp (v/5) ≤ R) :
    Real.exp v / R^6 ≤ Real.exp (-v/5) := by
  have hRp : 0 < R := (Real.exp_pos _).trans_le hR
  have hp := pow_le_pow_left₀ (Real.exp_pos (v/5)).le hR 6
  have he : Real.exp (v/5)^6 = Real.exp (6*v/5) := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he] at hp
  calc
    _ ≤ Real.exp v / Real.exp (6*v/5) :=
      div_le_div_of_nonneg_left (Real.exp_pos _).le (Real.exp_pos _) hp
    _ = _ := by rw [← Real.exp_sub]; congr 1; ring

/-- Completed logarithmic derivative and actual kernel combine before integrating. -/
theorem actual_horizontal_completed_norm_le {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (A c R y : ℝ) (j : ℕ),
      1 ≤ A → 1 < c → c ≤ 3/2 → 7 ≤ j → (j : ℝ) ≤ R → R ≤ (j : ℝ)+1 →
      (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j : ℝ)+3))^2) →
      (y = R ∨ y = -R) →
      ‖actualCompletedHorizontalIntegral A c y‖ ≤
        ((204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
          Real.exp ((2*c-1)*A)/(A^9*R^6)) *
        (K*(Real.log ((j : ℝ)+3))^2)*(2*c-1) := by
  obtain ⟨K,hK,hlog⟩ := actual_completed_logDeriv_good_line hCg
  refine ⟨K,hK,?_⟩
  intro A c R y j hA hc hc2 hj hjR hRj hgood hy
  have hRp : 0 < R := by
    have hj7 : (7 : ℝ) ≤ j := by exact_mod_cast hj
    linarith
  have hyabs : |y| = R := by rcases hy with hy | hy <;> simp [hy,hRp.le]
  unfold actualCompletedHorizontalIntegral HIntegral
  have hi := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := 1-c) (b := c) (f := fun x : ℝ =>
      actualBilateralCorrelationTransform A ((x : ℂ)+y*I-1/2)*
        logDeriv completedRiemannZeta ((x : ℂ)+y*I))
    (C := ((204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
      Real.exp ((2*c-1)*A)/(A^9*R^6))*(K*(Real.log ((j : ℝ)+3))^2))
    (fun x hx => ?_)
  · simpa only [show |c-(1-c)| = 2*c-1 by rw [abs_of_pos (by linarith)]; ring] using hi
  · rw [Set.uIoc_of_le (by linarith)] at hx
    rw [norm_mul]
    have hk := actual_bilateral_on_strip_norm_le A c x y hA hc hx.1.le hx.2
      (by rw [hyabs]; linarith)
    rw [hyabs] at hk
    exact mul_le_mul hk (hlog j R c x y hj hjR hRj hgood hc hc2 hy hx.1.le hx.2)
      (norm_nonneg _) (by have hZ := source_normalization_pos A hA; positivity)

/-- The explicit uniform-in-A coefficient of the actual horizontal estimate. -/
def actualHorizontalSourceConstant (K c : ℝ) : ℝ :=
  (2*c-1)*(204288 : ℝ)^2*(109395/4096)*(1+c^2)^2*K

/-- The complete actual horizontal budget decays exponentially above the moving height. -/
theorem actual_horizontal_moving_height_norm_le {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (A c R y : ℝ) (j : ℕ),
      1 ≤ A → 1 < c → c ≤ 3/2 → 7 ≤ j → (j : ℝ) ≤ R → R ≤ (j : ℝ)+1 →
      (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j : ℝ)+3))^2) →
      actualBumpMovingHeight A c ≤ R → (y = R ∨ y = -R) →
      ‖actualCompletedHorizontalIntegral A c y‖ ≤
        actualHorizontalSourceConstant K c*(Real.log ((j : ℝ)+3))^2/A^9*
          Real.exp (-((2*c-1)*A)/5) := by
  obtain ⟨K,hK,hbound⟩ := actual_horizontal_completed_norm_le hCg
  refine ⟨K,hK,?_⟩
  intro A c R y j hA hc hc2 hj hjR hRj hgood hheight hy
  have hb := hbound A c R y j hA hc hc2 hj hjR hRj hgood hy
  have he := actual_exponential_height_ratio_le ((2*c-1)*A) R hheight
  have hZ := source_normalization_pos A hA
  have hZlower := actualBumpNormalization_lower A hA
  have hzinv : 1/sourceNormalization A ≤ (109395/4096 : ℝ) := by
    rw [div_le_iff₀ hZ]
    nlinarith
  have ha : 0 < A := by linarith
  have hfac : 0 ≤ (2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
      K*(Real.log ((j : ℝ)+3))^2/A^9 := by positivity
  calc
    _ ≤ _ := hb
    _ = ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
        K*(Real.log ((j : ℝ)+3))^2/A^9) *
        (1/sourceNormalization A) * (Real.exp ((2*c-1)*A)/R^6) := by ring
    _ ≤ ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
        K*(Real.log ((j : ℝ)+3))^2/A^9) *
        (109395/4096) * Real.exp (-((2*c-1)*A)/5) := by
      exact mul_le_mul (mul_le_mul_of_nonneg_left hzinv hfac) he
        (by positivity) (by positivity)
    _ = _ := by unfold actualHorizontalSourceConstant; ring

end
end FormalResearch.RiemannHypothesis.ActualMovingHorizontalCompletedBudget
