# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectColoringAsHodgePositive.Variant9ac63e78dc52e7805fb63332c94c57107b65dc0b2bd51c03d51a2930fb421f68

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9241c24770558493e6c5b05fa571e0bf7cdec55b` · SHA-256 `9ac63e78dc52e7805fb63332c94c57107b65dc0b2bd51c03d51a2930fb421f68`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge.MoserColorHodgeSeparation
open GRWTSK.Geometry.Hodge.FiniteGraphCellular
example (c : ℝ) : Moser.energy (fun _ => c) = 0 :=
  (Moser.energy_eq_zero_iff_constant _).2 ⟨c, rfl⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fef878d1815a97a16ec1a638e5da30ae4d8e57d4e770faaf8f8771f40db5c8f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectColoringAsHodgePositive/Variant9ac63e78dc52e7805fb63332c94c57107b65dc0b2bd51c03d51a2930fb421f68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
