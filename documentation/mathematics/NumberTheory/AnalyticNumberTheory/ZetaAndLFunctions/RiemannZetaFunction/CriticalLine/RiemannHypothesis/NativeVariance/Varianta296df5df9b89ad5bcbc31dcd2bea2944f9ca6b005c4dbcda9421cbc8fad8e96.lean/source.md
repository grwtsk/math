# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NativeVariance.Varianta296df5df9b89ad5bcbc31dcd2bea2944f9ca6b005c4dbcda9421cbc8fad8e96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8630f998907bff0a05e177614d75ded02c0dabfd` · SHA-256 `a296df5df9b89ad5bcbc31dcd2bea2944f9ca6b005c4dbcda9421cbc8fad8e96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.OrderedVariance
import FormalResearch.RiemannHypothesis.Conversation.FirstCrossingConsumer

/-!
# The once-counted variance defect consumes the actual prime suffix

The source suffix height, native clock and chronological theta storage
instantiate the exact finite identity. This retains the positive variance
credit and claims no useful uniform lower gap for the actual primes.

Source: audited RH conversation Batch 13. Human direction:
grwtsk contributors. Local adapter and Lean proof: OpenAI Codex.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Conversation.NativeVariance

open OpenArithmeticSuppliers ArithmeticPrimitive AccordionConsumer FirstCrossingGreen
open OrderedVariance
open scoped BigOperators
noncomputable section

theorem actual_suffix_variance {N : ℕ} (hN : 1 ≤ N) (K : ℕ) :
    (∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ)) *
      profileEnergy (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j))
        (fun j => cellClock (N + j) (N + j + 1 : ℕ)) K -
      (actualSuffix N K 0) ^ 2 =
      chronologicalVariance (fun j => cellClock (N + j) (N + j + 1 : ℕ))
        (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) K := by
  have hheight : actualSuffix N K 0 =
      ∑ j ∈ Finset.range K, cellClock (N + j) (N + j + 1 : ℕ) *
        cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j) := by
    simpa only [actualSuffix, Nat.add_zero, mul_comm] using actual_signed_work_telescope hN K
  rw [hheight]
  simpa only [profileEnergy, mul_comm] using chronological_variance_identity
    (fun j => cellClock (N + j) (N + j + 1 : ℕ))
    (fun j => cumulativeDiscrepancy ordinaryPrimeCoefficient (N + j)) K

end
end GRWTSK.RiemannHypothesis.Conversation.NativeVariance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4aef4d572c3d1d8adb549f698b51beb423e8745c8321aeb8654803d236a5ca1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeVariance/Varianta296df5df9b89ad5bcbc31dcd2bea2944f9ca6b005c4dbcda9421cbc8fad8e96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
