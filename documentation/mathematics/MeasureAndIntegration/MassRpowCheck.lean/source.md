# Mass Rpow Check — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a9ea1b6898693fec3dbdffb50bf712d7251f912` · SHA-256 `a5ea942615dc2d9be1ae0701cb55cb939d50873aed681b114ef6b472e6a6f0ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
  done
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=351a24c47d4c47ac316d94ecca2c0e1f999bd1a2b14dd6c3bb3e741659061d14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/MassRpowCheck/Varianta5ea942615dc2d9be1ae0701cb55cb939d50873aed681b114ef6b472e6a6f0ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
