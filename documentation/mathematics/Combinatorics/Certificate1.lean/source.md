# Complete source: GRWTSK.InformationTheory.ReedSolomon.Certificate1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ac045334a11d03d2428e23ac0fa5541f2d24fe4` · SHA-256 `a9542f5ccf6b12dcddefdc6626bb2ddbbfcf5bac4ccfff1472bada285c4e2ea0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.InformationTheory.ReedSolomon.Coefficients

namespace GRWTSK.InformationTheory.ReedSolomon
set_option maxHeartbeats 50000000
set_option maxRecDepth 100000

/-- Exact checked 4×4 recovery/evaluation product for received-node profile 1. -/
theorem coefficients1 : ∀ j : Fin 4, compose recover1 encode1 j = identityMatrix j := by decide

/-- This identity holds for every four-word stripe, not only finite test inputs. -/
theorem roundTrip1_exact (x : Four) : roundTrip1 x = x := by
  unfold roundTrip1
  rw [transform_compose]
  have h : compose recover1 encode1 = identityMatrix := funext coefficients1
  rw [h, transform_identity]

end GRWTSK.InformationTheory.ReedSolomon
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9840248fd4200596d8a523feb254365350f8a693868884545ae0d167faa70927 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Certificate1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
