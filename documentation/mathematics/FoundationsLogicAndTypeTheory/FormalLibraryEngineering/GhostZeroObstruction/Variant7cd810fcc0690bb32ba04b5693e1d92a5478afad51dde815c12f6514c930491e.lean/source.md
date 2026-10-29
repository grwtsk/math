# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GhostZeroObstruction.Variant7cd810fcc0690bb32ba04b5693e1d92a5478afad51dde815c12f6514c930491e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `770611a445b33b3be059ae1b0ca9760554e7e7ef` · SHA-256 `7cd810fcc0690bb32ba04b5693e1d92a5478afad51dde815c12f6514c930491e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineIndex.GhostZeroObstruction

/-!
# Folder.Theorem.CrystallineIndex.GhostZeroObstruction

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports ghost-zero obstruction boundary facts.
Ontology: proof.crystalline_index.ghost_zero_obstruction
Pivot role: spectral
Zero typology: l-function
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace GhostZeroObstruction

theorem ghost_obstruction_nonzero
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (G : Folder.CrystallineIndex.GhostZeroObstruction H) :
    G.nonzero :=
  Folder.CrystallineIndex.ghost_obstruction_nonzero G

theorem ghost_obstruction_describes_torsion_mismatch
    {H : Folder.CrystallineIndex.CohomologyTheory}
    (G : Folder.CrystallineIndex.GhostZeroObstruction H) :
    G.describesTorsionMismatch :=
  Folder.CrystallineIndex.ghost_obstruction_describes_torsion_mismatch G

end GhostZeroObstruction
end CrystallineIndex
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62eed0e74ad802894ed3b514905716c3333dba0185d1b927c2fb13feadfca39a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GhostZeroObstruction/Variant7cd810fcc0690bb32ba04b5693e1d92a5478afad51dde815c12f6514c930491e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
