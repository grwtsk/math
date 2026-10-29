-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Lshift.Variantb022c735dfb6f1444de514d5a48c0c21f52d8fa460fbb0ae88c12288504af9df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b022c735dfb6f1444de514d5a48c0c21f52d8fa460fbb0ae88c12288504af9df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.Lshift.Variantb022c735dfb6f1444de514d5a48c0c21f52d8fa460fbb0ae88c12288504af9df","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"b022c735dfb6f1444de514d5a48c0c21f52d8fa460fbb0ae88c12288504af9df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/Spectral/Zeta/Determinant.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  spectral-rh/Spectral/Zeta/Determinant.lean
  -----------------------------------------
  ζ-regularised Fredholm determinant for the shifted Schrödinger operator
        L(γ) := L − (¼ + γ²) • Id,
  plus the fundamental vanishing criterion
        detShift(γ) = 0  ↔  (¼ + γ²) ∈ σ(L).
-/

import spectral_rh.Spectral.Zeta.Regularization
import spectral_rh.Ext.FredholmDetShift
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Analysis.Fredholm


namespace GRWTSK.Analysis.FunctionalAnalysis.Lshift.Variantb022c735dfb6f1444de514d5a48c0c21f52d8fa460fbb0ae88c12288504af9df

open Complex Real
open Fredholm.Determinant  -- brings `shift` / `shift_zero_iff` into scope
open scoped BigOperators

namespace SpectralDet

variable {P : Schrodinger.Potential}

local notation "E" => Schrodinger.L²(ℝ≥0)
local notation "L" => (Schrodinger.L P)

/-!  ## 1.  Shifted operator  L(γ)                                             -/

/-- `Lshift γ = L − (¼+γ²) · Id`.  (A bounded operator on the common domain.) -/
noncomputable
def Lshift (γ : ℂ) : E →L[ℂ] E :=
  (L : E →L[ℂ] E) - ((1 / 4 : ℂ) + γ ^ 2) • ContinuousLinearMap.id ℂ E

/-!  ## 2.  ζ-regularised Fredholm determinant of the shift                    -/

/--
Fredholm determinant
\[
  D(γ) \;=\;\det\nolimits_F\!\bigl(L - (\tfrac14 + γ^{2})\,\mathrm{Id}\bigr).
\]
-/
noncomputable
def detShift (γ : ℂ) : ℂ :=
  shift (T := (L : E →L[ℂ] E))
        (Schrodinger.L_compactResolvent P)
        ((1 / 4 : ℂ) + γ ^ 2)

/-!  ## 3.  Vanishing criterion                                                -/

/--
`detShift γ = 0` **iff** `¼ + γ²` lies in the spectrum of `L`.

This is the analytic heart of grwtsk contributors’ RH reformulation.
-/
lemma detShift_zero_iff (γ : ℂ) :
    detShift (P := P) γ = 0 ↔
      ((1 / 4 : ℂ) + γ ^ 2) ∈ spectrum ℂ (L : E →L[ℂ] E) := by
  simpa using
    shift_zero_iff
      (T     := (L : E →L[ℂ] E))
      (hComp := Schrodinger.L_compactResolvent P)
      ((1 / 4 : ℂ) + γ ^ 2)

end SpectralDet
