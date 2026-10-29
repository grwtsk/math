# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerSampleMass

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d16f064be5dfa11be7649d0b3a1af5333eff9cd` · SHA-256 `46bd2f5252d459059b109fce7b868d20d8eb91d9bd318c55518238b5c4e2ffe0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerKernelMass
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem periodFourXSampledKernelMassOne
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      signedSampledTriangularKernelAtPeriod
        (fejerOctavePeriod X) N r) = 1 := by
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold signedSampledTriangularKernelAtPeriod
  have hLr : (0 : ℝ) < ((fejerOctavePeriod X : ℕ) : ℝ) := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : 0 < 4 * X)
  rw [Finset.mul_sum]
  have hcomplex :=
    periodFourX_kernelComplexMass ⟨hX, hN, hNL⟩
  have hre := congrArg Complex.re hcomplex
  simp only [map_sum, Complex.ofReal_re, Complex.natCast_re] at hre
  calc
    (1 / ((fejerOctavePeriod X : ℕ) : ℝ)) *
        (∑ r ∈ Finset.range (fejerOctavePeriod X),
          (symmetricTriangularKernel N
            ((((r : ℝ) /
              ((fejerOctavePeriod X : ℕ) : ℝ))) :
              AddCircle (1 : ℝ))).re)
      =
      (1 / ((fejerOctavePeriod X : ℕ) : ℝ)) *
        ((fejerOctavePeriod X : ℕ) : ℝ) := by
          rw [hre]
    _ = 1 := by
          field_simp [hLr.ne']

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd5b5be87440a3693b3eb833be7dbefdbafa91730b841980a57e1973c760c2cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerSampleMass.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
