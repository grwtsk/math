# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Obstruction.Variant6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ece3685189168dd5d699e023245c969eeafa06b` · SHA-256 `6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Orbit.All

/-! # Orbit boundaries and obstructions -/

namespace Mathematics.Surgery

inductive ObstructionKind
  | orbitTypeBoundary
  | endpointFailure
  | regularityFailure
  | residualDivergence
  | cohomologyClass
  deriving DecidableEq, Repr

structure Obstruction where
  kind : ObstructionKind
  evidence : EvidenceId
  explanation : String
  deriving DecidableEq, Repr

end Mathematics.Surgery
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e7028feafcd7a076ed3ed8916b24694578f1d5038929900f174bb78244481f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Obstruction/Variant6673454ad9cd057b9f0f85a7028cdedcb7c0c1ae1a5cd9ed368fec599c9fdb38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
