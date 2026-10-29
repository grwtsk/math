-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LineFactsW.Variantc94e6102f9faffb2a94d259ce11bf16b800bf495b9bdee07f2ae178fbc59535d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c94e6102f9faffb2a94d259ce11bf16b800bf495b9bdee07f2ae178fbc59535d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.LineFactsW.Variantc94e6102f9faffb2a94d259ce11bf16b800bf495b9bdee07f2ae178fbc59535d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c94e6102f9faffb2a94d259ce11bf16b800bf495b9bdee07f2ae178fbc59535d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/gevrey-initial-20261002/Zeta23-preserved-before-pin-repair/zeta23/Zeta23/XiPrime/Hardy/EFFinal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
Zeta23/XiPrime/Hardy/EFFinal.lean — the W explicit formula WEF, instantiated.
  theorem wEF (hZ : WZerosInStrip t₀) (hs : WSeam t₀) (hR : RiemannVonMangoldt (wZeros hZ hs))
      (Pf : ℝ → Params) (hPf : FamilyHyps Pf) : WEF (wZeros hZ hs) Pf
from EFMain.wEF_of with LineFactsW ← Hardy/EFExpansion (e2LineFacts', freezeFactsW', norm_FZ_line),
ContourFactsW ← Hardy/EFContour (w_full_line_identity + lminus_line_identity),
CoeffFactsC ← Coeff/LSeries.LSeries_xiCoeffJ_of_gt_one at σ₀ = 9/8.
-/
import Zeta23.XiPrime.Hardy.EFMain
import Zeta23.XiPrime.Hardy.EFExpansion
import Zeta23.XiPrime.Hardy.EFContour
import Zeta23.XiPrime.Coeff.LSeries
import Zeta23.XiPrime.ExplicitFormula.Main


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LineFactsW.Variantc94e6102f9faffb2a94d259ce11bf16b800bf495b9bdee07f2ae178fbc59535d

open scoped BigOperators ArithmeticFunction ComplexConjugate
open Complex MeasureTheory Set Filter Topology

noncomputable section

namespace Zeta23
namespace XiPrime

open Hardy

/-- `LineFactsW` derived from the EF expansion. -/
theorem lineFactsW : LineFactsW := by
  intro c hc1 hc2 hW
  obtain ⟨h1, h2, h3⟩ := e2LineFacts' hc1 hc2 hW
  obtain ⟨f1, f2, f3⟩ := freezeFactsW' hc1 hc2 hW
  exact ⟨⟨h1, h2, h3⟩, ⟨f1, f2, f3⟩, norm_FZ_line hc1 hc2 hW⟩

/-- `ContourFactsW` assembled from Hardy/EFContour.lean (`w_full_line_identity`, `lminus_line_identity`). -/
theorem contourFactsW {t₀ : ℝ} (hZ : WZerosInStrip t₀) (hs : WSeam t₀) (hR : RiemannVonMangoldt (wZeros hZ hs)) :
    ContourFactsW hZ hs := by
  intro c hc1 hc2 hWc hWc' hline
  have hc1' : 1 < c := by linarith
  refine ⟨⟨lowZerosW c t₀, fun ρ hρ => mem_lowZerosW hρ, fun k hk hkc => ?_⟩, fun k hk hkc => ?_⟩
  · exact w_full_line_identity hZ hs hR hc1' hc2 hWc hWc' hline hk hkc
  · exact lminus_line_identity hc1' hc2 hk hkc

/-- `CoeffFactsC` from `LSeries_xiCoeffJ_of_gt_one` at σ₀ = 9/8. -/
theorem coeffFactsC : CoeffFactsC := by
  obtain ⟨R₀, hR₀, h⟩ := LSeries_xiCoeffJ_of_gt_one (9/8) (by norm_num)
  refine ⟨⟨R₀, hR₀, fun Λs hΛ c hc1 hc2 => ?_⟩, fun Λs N => ?_⟩
  · have hre : (((c:ℝ):ℂ)).re = c := by simp
    have h0 := h Λs hΛ ((c:ℝ):ℂ) (by simp; linarith)
    refine ⟨?_, fun t => ?_⟩
    · have := h0.1
      rw [xiCoeffJ'_eq]
      simpa using this
    · obtain ⟨-, -, h3⟩ := h Λs hΛ ((c:ℂ) + t * I) (by simp; linarith)
      rw [xiCoeffJ'_eq, Afn, Bfn]
      exact h3
  · rw [xiCoeffJ'_eq, xiCoeffJ'_eq, xiCoeffJ_conj]

/-- **WEF** [XF′ Thm 9.2]: the explicit formula for W = ζ′ + L₂ζ (i.e. for Z′), entrywise, frozen coefficients at
the REAL parameter L_{2⋆}(τ⋆), pole weight 2, error C·T^{−δ}·(1/max(1,(τ_k−τ_l)²) + 1/T). -/
theorem wEF {t₀ : ℝ} (hZ : WZerosInStrip t₀) (hs : WSeam t₀) (hR : RiemannVonMangoldt (wZeros hZ hs))
    (Pf : ℝ → Params) (hPf : FamilyHyps Pf) : WEF (wZeros hZ hs) Pf :=
  wEF_of hZ hs hR lineFactsW (contourFactsW hZ hs hR) coeffFactsC Pf hPf

end XiPrime
end Zeta23
