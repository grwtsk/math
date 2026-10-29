# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenPositiveCellControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd406400a2d7913cf285680389d2bf662834ba85` · SHA-256 `6a3951d0fd73a99284360b59e963874e0ebb430c4951d484bd728b622efe5896`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenPositiveCell

set_option autoImplicit false

/-! Local mutation and sign controls; SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenPositiveCellControls

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition HeightFifteenPositiveCell

theorem cell275_zero_rejected : chunk directTest directTerm 275 1 ≠ some 0 := by
  rw [cell275]
  decide

theorem cell274_one_rejected : chunk directTest directTerm 274 1 ≠ some 1 := by
  rw [cell274]
  decide

theorem exact_four_reconstruction : chunk directTest directTerm 272 4 = some 1 :=
  positive_four

theorem signed_term_not_absolute : directTerm 275 = 1 := cell275_term

theorem none_ne_successful_zero : (none : Option ℤ) ≠ some 0 := by decide

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenPositiveCellControls
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=889ea5a81cd15efcd074ac9c558926879d3dec70db60adef071161c24a4907c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenPositiveCellControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
