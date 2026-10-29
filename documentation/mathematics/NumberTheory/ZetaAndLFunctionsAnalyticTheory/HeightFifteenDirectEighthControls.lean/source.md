# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d23171696def68c2b381c364769767ba8f4d23b` · SHA-256 `6afdee3e97254cf75e68c699d0b9c43f0fb34b284bdf8a85a6e04dc336f7facd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthClosure

set_option autoImplicit false

/-!
# Controls for eight-cell claims, signed orientation, and exact exhaustion

These controls reuse the unexecuted local scripts. They do not provide
independent acceptance and do not run the target calculations again.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition HeightFifteenDirectEighthBlocks
open HeightFifteenDirectEighthClaims HeightFifteenDirectEighthClosure

theorem eighth34_zero_rejected :
    chunk directTest directTerm 272 8 ≠ some 0 := by
  rw [eighth034]
  decide

theorem eighth00_one_rejected :
    chunk directTest directTerm 0 8 ≠ some 1 := by
  rw [eighth000]
  decide

theorem final_three_present :
    chunk directTest directTerm 2376 3 = some 0 :=
  eighth297

theorem exact_exhaustion :
    eighthWidths.sum = HeightFifteenJetCandidate.edges :=
  eighthWidths_shape.2

theorem none_ne_successful_zero : (none : Option ℤ) ≠ some 0 := by decide

theorem positive_quarter_exact :
    chunk directTest directTerm 272 16 = some 1 :=
  positive_quarter

theorem positive_half_exact :
    chunk directTest directTerm 256 32 = some 1 :=
  positive_half

theorem positive_block_exact :
    chunk directTest directTerm 256 64 = some 1 :=
  positive_block

theorem claim_sum_one : eighthExpected.sum = 1 :=
  eighthExpected_shape.2

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectEighthControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebf00eeb6e15a88d91ceaab963cd3492f71abf49e3b3bedc6eaa98d6f02cdbd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenDirectEighthControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
