# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1468883d1799438a054ebc9e60e8e3aea3d67f0` · SHA-256 `f59354ed80e62187c55055aff625b3319db0f7f9582fbeb900432a6536c333aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 5. -/
theorem coefficients5 : ∀ j : Fin 4, compose recover5 encode5 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip5_exact (x : Four) : roundTrip5 x = x := by
  unfold roundTrip5
  rw [transform_compose]
  have h : compose recover5 encode5 = identityMatrix := funext coefficients5
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abb52411944486fe2ba078d84e1ec74f541dcdb180e02000c89035a2fe9f6100 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Certificate5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
