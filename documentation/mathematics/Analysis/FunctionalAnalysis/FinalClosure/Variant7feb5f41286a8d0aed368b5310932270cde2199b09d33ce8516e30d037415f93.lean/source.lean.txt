-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.GRHSpectralClosure.Variant0bfb237d5935fecb636e6f76346405893d8ccb6f76100d5a709a0d05998d3353","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bfb237d5935fecb636e6f76346405893d8ccb6f76100d5a709a0d05998d3353","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GRHSpectralClosure.Variant0bfb237d5935fecb636e6f76346405893d8ccb6f76100d5a709a0d05998d3353","mathematical_subject":"Foundations.Unclassified","original_sha256":"0bfb237d5935fecb636e6f76346405893d8ccb6f76100d5a709a0d05998d3353","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Equivalences/FinalClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SpectralProof.Equivalences.RH_iff_SpecReal


namespace GRWTSK.Analysis.FunctionalAnalysis.GRHSpectralClosure.Variant0bfb237d5935fecb636e6f76346405893d8ccb6f76100d5a709a0d05998d3353

noncomputable section

open Complex

namespace SpectralProof.Equivalences

variable {ϕ : ℝ → ℝ}

/--
Final logical closure of the spectral reformulation:
\[
\boxed{\text{GRH for } Λ_π \iff \text{Spec}(L_{\text{sym}}^\varphi) \subset \mathbb{R}}
\]

This equivalence is canonical: the spectrum of `Lsym_π` contains (μ_ρ) for each zero ρ of Λ_π, and
is real if and only if all ρ lie on the critical line Re(ρ) = ½.
-/
theorem GRH_spectral_closure
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ)
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (hΦ_symm : ∀ λ, Φ (-λ) = conj (Φ λ))
    (hΛ_entire : Entire Λπ)
    (hcanonical : ∀ λ, zetaDet ϕ (SpectralProof.Operators.Lsym_pi Φ hϕ) λ
                        = Λπ (1 / 2 + I * λ) / Λπ (1 / 2)) :
    (∀ ρ, Λπ ρ = 0 → ρ.re = 1 / 2)
      ↔ (∀ μ ∈ spectrum (SpectralProof.Operators.Lsym_pi Φ hϕ), μ.im = 0) :=
  GRH_iff_spec_real Φ Λπ hϕ hΦ_symm hΛ_entire hcanonical

end SpectralProof.Equivalences
