# Complete source: GRWTSK.Algebra.LinearAlgebra.Morphism.Variant2d20030b5800bde5926b8513340a2412c07955facd37701f965dea7ed2d69624

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebd6300cb644bed9a4b97d69e39e0aa7873c85c5` · SHA-256 `2d20030b5800bde5926b8513340a2412c07955facd37701f965dea7ed2d69624`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Core
import Surface.Legacy.BinaryLogicMatrixFlow.Core

namespace Surface.Legacy


structure BinaryLogicMatrixMorphism
    (sourceRows sourceCols targetRows targetCols : Nat) where
  map :
    BinaryLogicMatrix sourceRows sourceCols ->
    BinaryLogicMatrix targetRows targetCols
  claimBoundary : String

abbrev BinaryLogicMatrixEndomorphism (rows cols : Nat) :=
  BinaryLogicMatrixMorphism rows cols rows cols

theorem nonbijective_adapter_not_flow
    (M : BinaryLogicMatrixEndomorphism rows cols) :
    ¬ Function.Bijective M.map ->
      ¬ ∃ F : BinaryLogicMatrixFlow rows cols, F.forward = M.map := by
  intro hnot h
  rcases h with ⟨F, hF⟩
  apply hnot
  rw [← hF]
  exact BinaryLogicMatrixFlow.blmFlow_forward_bijective F

theorem morphism_boundary_visible
    (M : BinaryLogicMatrixMorphism sourceRows sourceCols targetRows targetCols) :
    M.claimBoundary = M.claimBoundary := by
  rfl

end Surface.Legacy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24bc90498a099583583d0b6c637fd95fb8c3d4c1bf998556761d690cba23c8c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Morphism/Variant2d20030b5800bde5926b8513340a2412c07955facd37701f965dea7ed2d69624.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
