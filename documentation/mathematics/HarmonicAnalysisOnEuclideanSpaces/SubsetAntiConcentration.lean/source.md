# Complete source: GRWTSK.Analysis.Fourier.Checks.Positive.SubsetAntiConcentration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae1845d4b88144c36ed2dd5c9a079e3e9fe3a0ef` · SHA-256 `c4c3be1590cb6147ab6ddf366defbccadaa09aaf3e26d75f089d2307866bbd8c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModBalancedExpectedLayers

/-!
# Checked downstream consumers of fixed-size subset anti-concentration

The range and prime-modulus hypotheses of source Theorem 1.3 are retained
literally. The existence statement uses the one constant uniform in all prime
moduli and all admissible fixed-size subset laws.
-/

namespace GRWTSK.SubsetAntiConcentrationChecks

theorem source_range_bound {p m : ℕ} [NeZero p] (hp : p.Prime)
    (S : Finset (ZMod p)) (hn : 2 ≤ S.card)
    (hl : (2 : ℝ) ^ 24 * Real.log S.card ≤ m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card) (z : ZMod p) :
    (GRWTSK.ZModSubsetSum.subsetSumProbability S m z : ℝ) ≤
      1 / p + (2 : ℝ) ^ 24 / ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.ZModBalancedExpectedLayers.subsetSumProbability_le_source_constant hp S hn hl hu z

theorem uniform_absolute_constant :
    ∃ C : ℝ, 0 < C ∧ ∀ (p : ℕ) (hp : p.Prime),
      ∀ (S : Finset (ZMod p)) (m : ℕ), 2 ≤ S.card →
        C * Real.log S.card ≤ m →
        (m : ℝ) ≤ (1 / 1000 : ℝ) * S.card / Real.log S.card →
        ∀ z : ZMod p,
          (@GRWTSK.ZModSubsetSum.subsetSumProbability p ⟨hp.ne_zero⟩ S m z : ℝ) ≤
          1 / p + C / ((S.card : ℝ) * Real.sqrt m) :=
  GRWTSK.ZModBalancedExpectedLayers.exists_anticoncentration_constant

end GRWTSK.SubsetAntiConcentrationChecks
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce09558fda34107626563dcec734d200b9a85c83185aaa4ec40b190d71afebd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Positive/SubsetAntiConcentration.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
