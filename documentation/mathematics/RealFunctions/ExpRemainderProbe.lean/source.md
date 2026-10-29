# Exp Remainder Probe — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20e7f984a9b07b2bb9cd555feebc277672834c46` · SHA-256 `9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic
set_option autoImplicit false
private theorem exp_negative_remainder (u : ℝ) (hu : 0 ≤ u) :
    |Real.exp (-u) - 1 + u| ≤ u ^ 2 := by
  have hnon : 0 ≤ Real.exp (-u) - 1 + u := by
    linarith [Real.add_one_le_exp (-u)]
  rw [abs_of_nonneg hnon]
  have hpos : 0 < 1 + u := by positivity
  have he : Real.exp (-u) ≤ 1 / (1 + u) := by
    rw [Real.exp_neg, ← one_div]
    exact one_div_le_one_div_of_le hpos (by linarith [Real.add_one_le_exp u])
  have hr : 1 / (1 + u) ≤ 1 - u + u ^ 2 := by
    apply (div_le_iff₀ hpos).mpr
    nlinarith [pow_nonneg hu 3]
  linarith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b95a3d829d75ef8433f4af9558afaa944b4f8aac42f585ba066bb23b59d2e958 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ExpRemainderProbe/Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
