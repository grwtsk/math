# Mass Rpow Check Attempt API02 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e72dd57bf9a5ab25e916b87c53eab5439e9e3be5` · SHA-256 `866c44a8cf52c1a1ad14bafb4e960ff3a97a87fe44fd5b5d60cf126377336ab1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
set_option autoImplicit false
open MeasureTheory Set
noncomputable section
example (n : ℕ) :
    (∫ y : ℝ in Ioi 0,y^n*Real.exp (-y/2))=(2:ℝ)^(n+1)*(n.factorial:ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a:=(n:ℝ)+1) (r:=(1/2:ℝ)) (by positivity) (by norm_num)
  simp only [add_sub_cancel_right] at h
  simp_rw [Real.rpow_natCast (n:=n)] at h
  trace_state
  sorry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba0ebd188e56be5478e0353173559348d7a3c180b6324d45e661c810fea57308 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/MassRpowCheckAttemptAPI02/Variant866c44a8cf52c1a1ad14bafb4e960ff3a97a87fe44fd5b5d60cf126377336ab1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
