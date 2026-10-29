# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b912623a52271a4c1e1666d1ca8c18366be6ac02` · SHA-256 `6db300b800b393a6df817fa759754de7b575b603f68acaa08a364c170e8f8297`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 8. -/
theorem coefficients8 : ∀ j : Fin 4, compose recover8 encode8 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip8_exact (x : Four) : roundTrip8 x = x := by
  unfold roundTrip8
  rw [transform_compose]
  have h : compose recover8 encode8 = identityMatrix := funext coefficients8
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b9cf7f306d24a721e5c961e6839e2345583571e0366cec9fe7e5ec6f6ae7ded -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Certificate8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
