# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2fPositiveZetaAdap.Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c5013825df09b10b62a6313c91843c16b10cd860` · SHA-256 `65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ZeroSymmetry
import Mathlib.NumberTheory.LSeries.ZetaZeros
namespace FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
/-- A strip zero satisfies the canonical exact trivial-zero and pole exclusions. -/
theorem nontrivial_zeta_zero_of_strip (ρ : ℂ) (hzero : riemannZeta ρ = 0)
    (hstrip : 0 < ρ.re ∧ ρ.re < 1) : NontrivialZetaZero ρ := by
  refine ⟨hzero, ?_, ?_⟩
  · rintro ⟨n, hn⟩
    have hr := congrArg Complex.re hn
    have hn0 : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    norm_num at hr
    linarith [hstrip.1]
  · intro hn
    have hr := congrArg Complex.re hn
    norm_num at hr
    linarith [hstrip.2]


end FormalResearch.RiemannHypothesis.PoleSourceZetaDetection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3a9b618c4941637ea24d62a2d1428fd16c61b9e117eda4c6b9a824a7736d66e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2fPositiveZetaAdap/Variant65e0e5047017e0cac62eba66c5a198fd92d76aceb83621e036910269d0511d2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
