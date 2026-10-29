# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate10

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9822684c5cd1bd53763d69f93e59d0b7ea1466b` · SHA-256 `4275220f43bea4b10a40205f8e4e515e21eaab4eaf70eee22c0c17a4889043d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 10. -/
theorem coefficients10 : ∀ j : Fin 4, compose recover10 encode10 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip10_exact (x : Four) : roundTrip10 x = x := by
  unfold roundTrip10
  rw [transform_compose]
  have h : compose recover10 encode10 = identityMatrix := funext coefficients10
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d53b1d7cc12e9a37e4c506506013a3386d8bf7fd52a01bb7be8875da1b89d9bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Certificate10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
