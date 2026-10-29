# Quaternion — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `394a1538c9b38eabb9a9fc01e57275598f3bb846` · SHA-256 `1a125fc8d27e94e4ae6e0a2583979a469e41067891825a0c1344d7e6006b9501`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Quaternion
import Mathlib.Basic.Real.Basic
import Mathlib.NumberTheory.Zsqrtd.GaussianInt

open Quaternion
/--
info: { re := 0, imI := 0, imJ := 0, imK := 0 }
-/
#guard_msgs in
#eval (0 : ℍ[ℚ])

/--
info: { re := 1, imI := 0, imJ := 0, imK := 0 }
-/
#guard_msgs in
#eval (1 : ℍ[ℚ])

/--
info: { re := 4, imI := 0, imJ := 0, imK := 0 }
-/
#guard_msgs in
#eval (4 : ℍ[ℚ])

/--
info: { re := Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/), imI := Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/), imJ := Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/), imK := Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) }
-/
#guard_msgs in
#eval (⟨0, 0, 0, 0⟩ : ℍ[ℝ])

/--
info: { re := Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/), imI := Real.ofCauchy (sorry /- 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, ... -/), imJ := Real.ofCauchy (sorry /- 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, ... -/), imK := Real.ofCauchy (sorry /- 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, ... -/) }
-/
#guard_msgs in
#eval (⟨1, 2, 3, 4⟩ : ℍ[ℝ])

/--
info: { re := ⟨0, 0⟩, imI := ⟨0, 0⟩, imJ := ⟨0, 0⟩, imK := ⟨0, 0⟩ }
-/
#guard_msgs in
#eval (0 : ℍ[GaussianInt])
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d62b743850b2b42526d7d5704804aaf9a92db0db70a1bba3cc01b05652ea76f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Quaternion/Variant1a125fc8d27e94e4ae6e0a2583979a469e41067891825a0c1344d7e6006b9501.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
