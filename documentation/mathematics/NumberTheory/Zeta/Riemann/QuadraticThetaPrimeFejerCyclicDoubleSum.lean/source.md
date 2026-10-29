# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicDoubleSum

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dab6a7b6d1a0dfebe3d4235f3b5947466e4de078` · SHA-256 `a3aa98ab22677ebc5f86d1c2c086881ee9116c23dd96dd986d682fb8ab3c5eb8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvexContraction
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

/-- Exact finite reindexing of the cyclic double sum from (x,y) to
(x,r=x-y), followed by swapping x and r. -/
theorem cyclicConvolutionDoubleSumReindexing :
    CyclicConvolutionDoubleSumReindexingClaim := by
  intro X N m hreg
  let L := fejerOctavePeriod X
  have hinner :
      ∀ x : ZMod L,
        (∑ y : ZMod L,
          cyclicFejerKernel X N (x - y) *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m y|)
        =
        ∑ r : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
    intro x
    exact Fintype.sum_equiv (cyclicSubEquiv x) _ _ (by
      intro y
      simp [cyclicSubEquiv])
  calc
    (∑ x : ZMod L,
      ∑ y : ZMod L,
        cyclicFejerKernel X N (x - y) *
          |cyclicSharpPrefixIndicator X m x -
            cyclicSharpPrefixIndicator X m y|)
      =
      ∑ x : ZMod L,
        ∑ r : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
            apply Finset.sum_congr rfl
            intro x hx
            exact hinner x
    _ =
      ∑ r : ZMod L,
        ∑ x : ZMod L,
          cyclicFejerKernel X N r *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m (x - r)| := by
            rw [Finset.sum_comm]
    _ =
      ∑ r : ZMod L,
        cyclicFejerKernel X N r *
          cyclicSharpTranslationL1 X m r := by
            apply Finset.sum_congr rfl
            intro r hr
            unfold cyclicSharpTranslationL1
            rw [Finset.mul_sum]

/-- The cyclic convex-combination L1 supplier is now source-proved. -/
theorem cyclicConvolutionL1ByTranslation :
    CyclicConvolutionL1ByTranslationClaim :=
  doubleSumReindexing_to_cyclicConvolutionL1
    cyclicConvolutionDoubleSumReindexing

/-- The universal smoothing branch is now reduced to interval translation
cardinality alone. -/
def CyclicIntervalTranslationCountOnlyFrontier : Prop :=
  CyclicSharpTranslationCardinalityClaim

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b6ca824f6f54b8a9bf40d20106538488c74b445dba803c7f9192826afefa9f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicDoubleSum.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
