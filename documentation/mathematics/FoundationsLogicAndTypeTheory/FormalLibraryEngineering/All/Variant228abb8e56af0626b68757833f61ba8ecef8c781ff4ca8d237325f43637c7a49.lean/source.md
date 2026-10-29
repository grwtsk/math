# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.All.Variant228abb8e56af0626b68757833f61ba8ecef8c781ff4ca8d237325f43637c7a49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61187ab018bb24e06a05eda379c718a49863bccd` · SHA-256 `228abb8e56af0626b68757833f61ba8ecef8c781ff4ca8d237325f43637c7a49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Completion.Bitfield
import Mathematics.BinaryFrontier.Completion.ContinuationCover
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Obstruction.Factorization
import Mathematics.BinaryFrontier.Obstruction.Provenance
import Mathematics.BinaryFrontier.Symmetry.Canonical
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance
import Mathematics.BinaryFrontier.Symmetry.ObstructionAction
import Mathematics.BinaryFrontier.Symmetry.OrientationEquivariance
import Mathematics.BinaryFrontier.Refinement.Tree
import Mathematics.BinaryFrontier.Refinement.Address
import Mathematics.BinaryFrontier.Refinement.Boundary
import Mathematics.BinaryFrontier.Refinement.CanonicalObstruction
import Mathematics.BinaryFrontier.Refinement.Resolver

/-!
# Binary frontier

The aggregate exposes four independent mathematical roots--partial order,
completion semantics, primitive cores, and finite-orbit canonicalization--and
then combines them through explicit tree, boundary, symmetry, and total
resolver certificates.  Missing evidence remains a named unknown; malformed
structure alone is rejected.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19afcc92ce761ddcdfcc7b84cc6201b2aa85bbe9a74fb7b490a543a459e7204f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/All/Variant228abb8e56af0626b68757833f61ba8ecef8c781ff4ca8d237325f43637c7a49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
