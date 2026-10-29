# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TT06SieveCertificationSoundness.Variant44051675f2173fda6b8098166c014247fa7a0b7e97743b59b064f162e8520d42

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f2f7a02fa65666bb8202befa8bcf9769289d238` · SHA-256 `44051675f2173fda6b8098166c014247fa7a0b7e97743b59b064f162e8520d42`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Transport.Sieve

universe uCoordinate

namespace FCRS.Transport.Theorems

/-- An accepted evaluation entails its specification only by procedure soundness. -/
theorem tt06_sieveCertificationSound
    {Coordinate : Type uCoordinate}
    {specification : SieveSpecification Coordinate}
    {procedure : SieveProcedure specification}
    {soundness : SieveSoundness procedure}
    {left right : Coordinate}
    {evaluation : SieveEvaluation procedure left right}
    (witness : SieveWitness soundness evaluation) :
    specification.accepts left right := by
  apply soundness.sound left right
  calc
    procedure.evaluate left right = evaluation.result.decision :=
      evaluation.result.resultMatches.symm
    _ = .Accepted := witness.accepted

end FCRS.Transport.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf110bf5cfc27b546077b71d79bb10241ce9a7097fa4725b0f36791a0cd8ce21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TT06SieveCertificationSoundness/Variant44051675f2173fda6b8098166c014247fa7a0b7e97743b59b064f162e8520d42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
