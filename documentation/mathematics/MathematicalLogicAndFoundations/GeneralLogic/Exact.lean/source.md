# Exact — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5ebca74ef359ddafc93fcbbde51d9cf31abe2ae` · SHA-256 `c66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Progression.All
import Mathlib.Data.Real.Basic

/-! # Exact endpoint-preserving Gamma bridges -/

namespace Mathematics.GammaBridge

universe u

/-- An exact bridge carries its endpoints as fixed predicates. -/
structure Exact (State : Type u) where
  id : GammaBridgeId
  path : ℝ → State
  left : State
  right : State
  left_endpoint : path 0 = left
  right_endpoint : path 1 = right

end Mathematics.GammaBridge
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e64f4843559d9235e3cedcde278f1f9d64b69b707a688d7ae1f7dd18cecb5aea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Exact/Variantc66c94b588102380d367a08a3ea21568dc4bca0d3e70f50f42a114ac5a07081f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
