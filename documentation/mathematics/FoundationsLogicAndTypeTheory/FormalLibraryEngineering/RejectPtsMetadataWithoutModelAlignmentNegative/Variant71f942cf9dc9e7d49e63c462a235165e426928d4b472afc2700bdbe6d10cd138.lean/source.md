# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectPtsMetadataWithoutModelAlignmentNegative.Variant71f942cf9dc9e7d49e63c462a235165e426928d4b472afc2700bdbe6d10cd138

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89bf103c142692f8121f9c61c6cbce39dd6f3d61` · SHA-256 `71f942cf9dc9e7d49e63c462a235165e426928d4b472afc2700bdbe6d10cd138`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PTSModelTransport
open GRWTSK.Logic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
-- Hostile mutation: a source-bound theorem alone cannot fill the alignment field.
example (B : SourceBoundWeakToStrong N) : ExternalAdmission P N where
  externalTheorem := B
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4506bfae55d465afae7e7fb43d0c61234c41cc46cb51b0d09cde6367db1e1936 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RejectPtsMetadataWithoutModelAlignmentNegative/Variant71f942cf9dc9e7d49e63c462a235165e426928d4b472afc2700bdbe6d10cd138.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
