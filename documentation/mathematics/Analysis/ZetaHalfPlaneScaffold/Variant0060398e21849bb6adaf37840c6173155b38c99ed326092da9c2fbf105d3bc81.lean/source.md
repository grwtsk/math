# Complete source: GRWTSK.Analysis.ZetaHalfPlaneScaffold.Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e49821d8530cce2c31fb5f4caf754674b9e34d5e` · SHA-256 `0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.NumberTheory.FiniteEulerProduct
import Folder.Rebuild.ClassicalAnchor
import Mathlib.Analysis.SpecialFunctions.Pow.Real

/-!
# Folder.Rebuild.AnalyticNumberTheory.ZetaHalfPlaneScaffold

Target propositions and finite checked facts for the zeta half-plane route.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def ZetaSeriesConvergesOnRealHalfPlane : Prop :=
  ∀ σ : ℝ, 1 < σ →
    Summable fun n : Nat =>
      if n = 0 then 0 else (n : ℝ) ^ (-σ)

def EulerProductForZetaHalfPlaneTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.theoremLabel = "finite-to-infinite Euler product route" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

def ZetaNonzeroOnRealGreaterThanOneTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.shortName = "Euler product" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

def PrimeNumberTheoremTarget : Prop :=
  ∃ A : ClassicalAnchor,
    A.theoremLabel = "PrimeNumberTheoremTarget" ∧
      A.formalRole = RebuildProofStatus.theoremTarget

theorem finite_partial_zeta_sum_nonnegative
    (σ : ℝ)
    (N : Nat) :
    0 ≤
      ∑ n ∈ Finset.Icc 1 N,
        (if n = 0 then 0 else (n : ℝ) ^ (-σ)) := by
  refine Finset.sum_nonneg ?_
  intro n _hn
  by_cases hn0 : n = 0
  · simp [hn0]
  · simp [hn0, Real.rpow_nonneg (by positivity : (0 : ℝ) ≤ n) (-σ)]

end AnalyticNumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab3d4f560d5fb13909bbd1c9083e1b399d4d18ae9b0c3af738137fd454dac73a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ZetaHalfPlaneScaffold/Variant0060398e21849bb6adaf37840c6173155b38c99ed326092da9c2fbf105d3bc81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
