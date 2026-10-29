# Complete source: GRWTSK.Algebra.LinearAlgebra.PosDef.Variant2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5db5819466891dc2290faf078feddca2f32351b4` · SHA-256 `2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.PosDef

open Matrix
open scoped ComplexOrder

variable {n 𝕜 : Type*} [Fintype n] [RCLike 𝕜] [DecidableEq n]
  {A : Matrix n n 𝕜} (hA : PosSemidef A)

-- test for custom elaborator
/--
info: (⋯ : A.PosSemidef).sqrt : Matrix n n 𝕜
-/
#guard_msgs in
#check (id hA).sqrt
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9220331c80330ba52d1f55f312e8716073306e8104092f7afb25350c1794c524 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PosDef/Variant2ec9cbd5e99b294a6f0b9c534de2cfbe1830359f186b6e3f8f5df37dda81051f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
