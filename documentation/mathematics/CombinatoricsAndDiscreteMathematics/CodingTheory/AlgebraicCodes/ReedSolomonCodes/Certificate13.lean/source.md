# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b6d9d3c680c89fd1ec12658b9db78f6a984bfdef` · SHA-256 `d3d688d0c7d4b7f3f7fba77ba7fdf083a022801cfbdfefe33f9853e8970734e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 13. -/
theorem coefficients13 : ∀ j : Fin 4, compose recover13 encode13 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip13_exact (x : Four) : roundTrip13 x = x := by
  unfold roundTrip13
  rw [transform_compose]
  have h : compose recover13 encode13 = identityMatrix := funext coefficients13
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea0406025b1d51ea502fe8e860c3b0e4486e12e22015733f290c812f3c9508d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Certificate13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
