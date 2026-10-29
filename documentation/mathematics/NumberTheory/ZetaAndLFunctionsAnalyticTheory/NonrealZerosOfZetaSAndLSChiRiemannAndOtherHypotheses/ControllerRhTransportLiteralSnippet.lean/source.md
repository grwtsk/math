# Controller Rh Transport Literal Snippet — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3eec42dd4b43321def01cc3d2d2a2d0d18e15a7d` · SHA-256 `6dbd5cfd02a92ae1851d641e6802884d239fdad8bddb7f22bb87543480769dd8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

namespace ControllerRHTransportLiteral
open Filter
open FormalResearch.RiemannHypothesis
open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential HalfLineOperator SourceResolventTruncation
open ControllerRHTransportScratch
noncomputable section
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re ≤ 1 / 2 :=
  nontrivial_re_le_half_of_mass_subsequence α hα hmass ρ hρ
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0))
    (ρ : ℂ) (hρ : NontrivialZetaZero ρ) : ρ.re = 1 / 2 :=
  nontrivial_re_eq_half_of_mass_subsequence α hα hmass ρ hρ
example (α : ℕ → ℝ) (hα : ∀ j : ℕ, 1 ≤ j → 0 < α j)
    (hmass : Tendsto (fun j => sourceMass (α j)) atTop (nhds 0)) :
    _root_.RiemannHypothesis := conditional_rh_of_mass_subsequence α hα hmass
example (q : ℕ → H)
    (hres : Tendsto (fun j => ‖referenceVector - sourceOperator (q j)‖) atTop (nhds 0)) :
    ∀ (s : ℂ), riemannZeta s = 0 →
      (¬ ∃ n : ℕ, s = -2 * (n + 1)) → s ≠ 1 → s.re = 1 / 2 :=
  conditional_rh_of_full_residual q hres
end
end ControllerRHTransportLiteral
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88ab830cdee9cd3c1d965e9a360052f583b66b3f5f74f48aa2492067dadaa76a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ControllerRhTransportLiteralSnippet/Variant6dbd5cfd02a92ae1851d641e6802884d239fdad8bddb7f22bb87543480769dd8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
