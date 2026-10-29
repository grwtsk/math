# RHIff Spec Real — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3c05a243afa6df9377ce86a9d0c08261fcc71c0` · SHA-256 `3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SpectralProof.Operators.LsymPi
import SpectralProof.Determinants.CanonicalId
import SpectralProof.Determinants.SpectralMap

noncomputable section

open Complex

namespace SpectralProof.Equivalences

variable {ϕ : ℝ → ℝ}

/--
Generalized Riemann Hypothesis for Λ_π:
All nontrivial zeros lie on the critical line Re(ρ) = ½.
-/
def GRH (Λπ : ℂ → ℂ) : Prop :=
  ∀ ρ : ℂ, Λπ ρ = 0 → ρ.re = 1 / 2

/--
Spectral reality of the canonical operator:
All elements of the spectrum lie on the real axis.
-/
def SpectrumReal (Φ : ℝ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) : Prop :=
  ∀ μ ∈ spectrum (SpectralProof.Operators.Lsym_pi Φ hϕ), μ.im = 0

/--
Main equivalence:
\[
\text{GRH for } Λ_π(s) \iff \text{Spec}(L_{\text{sym}}^\varphi) \subset ℝ
\]
-/
theorem GRH_iff_spec_real
    (Φ : ℝ → ℂ) (Λπ : ℂ → ℂ)
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|)
    (hΦ_symm : ∀ λ, Φ (-λ) = conj (Φ λ))
    (hΛ_entire : Entire Λπ)
    (hcanonical : ∀ λ, zetaDet ϕ (SpectralProof.Operators.Lsym_pi Φ hϕ) λ
                        = Λπ (1 / 2 + I * λ) / Λπ (1 / 2)) :
    GRH Λπ ↔ SpectrumReal Φ hϕ := by
  constructor
  · -- GRH ⇒ spectrum ⊆ ℝ
    intro hGRH
    intro μ hμ
    -- Invert μ to get ρ = ½ + iμ
    let ρ := SpectralProof.Determinants.inverseSpectralMap μ
    have : Λπ ρ = 0 := by
      -- If μ ∈ Spec(L), then det_ζ(I - λL) = 0 ⇒ Λπ(ρ) = 0
      have := hcanonical μ
      rw [SpectralProof.Determinants.zetaDet_def] at this
      rw [this, div_eq_zero_iff] at this
      exact this.1
    specialize hGRH ρ this
    rw [SpectralProof.Determinants.inverseSpectralMap, add_re] at hGRH
    simp only [ofReal_re, ofReal_im, zero_add] at hGRH
    rw [← hGRH, zero_im]
  · -- spectrum ⊆ ℝ ⇒ GRH
    intro hSpec ρ hρ_zero
    let μ := SpectralProof.Determinants.spectralMap ρ
    have : μ ∈ spectrum (SpectralProof.Operators.Lsym_pi Φ hϕ) :=
      SpectralProof.Determinants.zero_maps_to_spectrum Φ Λπ hϕ ρ hρ_zero
    specialize hSpec μ this
    -- ρ = ½ + iμ ⇒ Re(ρ) = ½ iff Im(μ) = 0
    rw [SpectralProof.Determinants.spectralMap, sub_re, ofReal_re, zero_sub,
        neg_re, div_re, ofReal_re, zero_div, zero_sub] at hSpec
    simp only [ofReal_re, div_zero] at hSpec
    field_simp [I_ne_zero] at hSpec
    rw [← hSpec]
    exact rfl

end SpectralProof.Equivalences
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44fda6ef9f778912f70607aae32636f41b93a0f5f08fa1a324d7c1b8360090b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RHIffSpecReal/Variant3604f116c73c2f16b1225c4ba8c1481688039853829a913e9a06075607d8e846.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
