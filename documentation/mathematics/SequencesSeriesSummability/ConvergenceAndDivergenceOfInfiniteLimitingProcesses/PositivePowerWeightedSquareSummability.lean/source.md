# Complete source: GRWTSK.Analysis.Asymptotics.Checks.Positive.PowerWeightedSquareSummability

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `471dc5e287c20510bdcda142f2e7ec70ec4d0565` · SHA-256 `2c920b608eddf49a9744e82159be6823fab7fd629e63fe73b2e3c1ab7363c08d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.AsymptoticAnalysis.PowerWeightedSquareSummability

open GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability

example (f : ℕ → ℝ) {C α q : ℝ}
    (hf0 : f 0 = 0)
    (hf : ∀ n : ℕ, 1 ≤ n → |f n| ≤ C * (n : ℝ) ^ α)
    (hexp : 2 * α - q < -1) :
    Summable (fun n : ℕ => f n ^ 2 * (n : ℝ) ^ (-q)) :=
  summable_sq_mul_rpow_of_abs_le_rpow f hf0 hf hexp

#print axioms GRWTSK.Analysis.Asymptotics.PowerWeightedSquareSummability.summable_sq_mul_rpow_of_abs_le_rpow
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d65eef5e844f2bbee5f77af1b44bc4ab1200387b68f28de7eb492bcf950675ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Checks/Positive/PowerWeightedSquareSummability__SourceOccurrenceed3fba44fc0c745b0eda9263.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
