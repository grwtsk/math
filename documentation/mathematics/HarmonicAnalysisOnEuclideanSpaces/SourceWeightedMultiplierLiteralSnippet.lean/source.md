# Source Weighted Multiplier Literal Snippet — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe0b13fb746a6edb8fa222c1f7652880af4ba2f6` · SHA-256 `658032ac78b0edb68746a5512c0b9bd9b9b1511764b640e870500c690e3d621b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
noncomputable section
open MeasureTheory FourierTransform Complex
open SourceWeightedMultiplierScratch
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceFilterDelta HalfLineExtension

example (ε h t : ℝ) : boundaryMultiplier ε h t =
    (1 / 2 + (t : ℂ) * I) * boundaryFilter ε h t := rfl

example (ε h t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) :
    ‖boundaryMultiplier ε h t‖ ≤ (4 / 3 : ℝ) * Real.exp (1 / 4) :=
  boundaryMultiplier_norm_le ε h t hε hsmall hh

variable (ε h : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h)

example (f : FullH) :
    MemLp (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) 2 volume :=
  frequencyProduct_memLp ε h hε hsmall hh f

example : FullH →L[ℂ] FullH := frequencyMultiplier ε h hε hsmall hh

example (f : FullH) : frequencyMultiplier ε h hε hsmall hh f =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * f ξ) :=
  frequencyMultiplier_ae ε h hε hsmall hh f

example : sourceMultiplier ε h hε hsmall hh =
    fourierInvCLM ℂ FullH ∘L frequencyMultiplier ε h hε hsmall hh ∘L fourierCLM ℂ FullH := rfl

example (f : FullH) : (𝓕 (sourceMultiplier ε h hε hsmall hh f) : FullH) =ᵐ[volume]
    (fun ξ : ℝ => boundaryMultiplier ε h (2 * Real.pi * ξ) * (𝓕 f : FullH) ξ) :=
  sourceMultiplier_fourier_ae ε h hε hsmall hh f

example (f : FullH) :
    ‖sourceMultiplier ε h hε hsmall hh f‖ ≤ ((4 / 3 : ℝ) * Real.exp (1 / 4)) * ‖f‖ :=
  sourceMultiplier_norm_le ε h hε hsmall hh f

end
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=593523cf8b0209cf174b0cb5c9b2d35a7208a61b5f12841e1ae5e58fa2427af4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceWeightedMultiplierLiteralSnippet/Variant658032ac78b0edb68746a5512c0b9bd9b9b1511764b640e870500c690e3d621b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
