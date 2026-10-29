# Complete source: GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerKernelMass

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `156a82ccc556801bcd988c5ac49f4105e13a0136` · SHA-256 `ab5fcc7dcc227a258863beface69bbe96cc7b429fd8f572e450b4204abc52986`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Moebius.CenteredLowGCDNonAliasingFejerModeOrthogonality
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.RiemannHypothesis

theorem periodFourX_zero_mode_sum
    {X : ℕ} (hX : 0 < X) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      fourier 0
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ)) : ℂ) =
      (fejerOctavePeriod X : ℂ) := by
  simp [fejerOctavePeriod]

theorem periodFourX_kernelComplexMass
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      symmetricTriangularKernel N
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ)) : ℂ) =
      (fejerOctavePeriod X : ℂ) := by
  classical
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold symmetricTriangularKernel
  rw [Finset.sum_comm]
  calc
    (∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
      ∑ r ∈ Finset.range (fejerOctavePeriod X),
        (symmetricTriangularWeight N k : ℂ) *
          fourier k
            ((((r : ℝ) /
              ((fejerOctavePeriod X : ℕ) : ℝ))) :
              AddCircle (1 : ℝ)))
      =
      ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
        (symmetricTriangularWeight N k : ℂ) *
          (∑ r ∈ Finset.range (fejerOctavePeriod X),
            fourier k
              ((((r : ℝ) /
                ((fejerOctavePeriod X : ℕ) : ℝ))) :
                AddCircle (1 : ℝ))) := by
          apply Finset.sum_congr rfl
          intro k hk
          rw [Finset.mul_sum]
    _ = (symmetricTriangularWeight N 0 : ℂ) *
        (fejerOctavePeriod X : ℂ) := by
          rw [← Finset.sum_eq_single 0]
          · simp [symmetricTriangularWeight_zero hN,
              periodFourX_zero_mode_sum hX]
          · intro k hk hk0
            rw [periodFourXFourierModeOrthogonality
              ⟨hX, hN, hNL⟩ hk hk0]
            simp
          · intro hzero
            exfalso
            exact hzero (by simp [hN])
    _ = (fejerOctavePeriod X : ℂ) := by
          rw [symmetricTriangularWeight_zero hN]
          simp

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5d51a4f47fbdacaca2929c54322ba8c20892fed05838671799945ca68cd7c20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/CenteredLowGCDNonAliasingFejerKernelMass.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
