# Kernel Scale Comparison Class Example — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d532cfffc9c33730690b50d4ae048a72d324c48a` · SHA-256 `2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.KernelScaleComparison

set_option autoImplicit false
namespace KernelScaleComparisonClassExample
open FormalResearch.RiemannHypothesis.SourceComparison
open KernelScaleComparison
noncomputable section

example (A : ℝ) (h g : ℕ) (hA : 1 ≤ A) (hh : 1 ≤ h) (hg : 1 ≤ g) :
    |ThetaRemainder.thetaRemainder A (h * g ^ 2) -
      Real.sqrt 2 * ThetaRemainder.thetaRemainder A (2 * (h * g ^ 2))| ≤
      scaleComparisonCoefficient A * Real.log 2 / (Real.sqrt (h : ℝ) * (g : ℝ)) := by
  have hq : 1 ≤ h * g ^ 2 := by nlinarith
  have hbound := theta_remainder_scale_comparison A (h * g ^ 2) 2 hA hq (by norm_num)
  have hroot : Real.sqrt ((h * g ^ 2 : ℕ) : ℝ) = Real.sqrt (h : ℝ) * (g : ℝ) := by
    push_cast
    rw [Real.sqrt_mul (Nat.cast_nonneg h), Real.sqrt_sq (Nat.cast_nonneg g)]
  simpa only [Nat.cast_ofNat, hroot, abs_sub_comm] using hbound

end
end KernelScaleComparisonClassExample
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=231f835ffa43a1e78c24e8c78f46c361febe1423c335e3d1fc0ebc387fbf0384 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KernelScaleComparisonClassExample/Variant2bdf9eabde59c7cdd170077f6aade3a05cefb9fd5f35988404b8a254e61b466f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
