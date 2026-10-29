# Presentation Rule — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1d304183cbfbec0a04aa81b6475198c44040c5a` · SHA-256 `1162973bc855c8a911f6a4bc82b85dd6883c570a21556e13079ea870ab78fe44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.PresentationRule

/-!
# Folder.Theorem.Archive.PresentationRule

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes copy presentation fixed-point facts.
Ontology: proof.archive.presentation_rule
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Archive

theorem copyRule_fixed
    (M : Folder.Carrier.BinaryMatrix) :
    Folder.Archive.IsFixedBy Folder.Archive.copyRule M :=
  Folder.Archive.copyRule_fixed M

end Archive
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfc94513b18b2946ea28d66d120df66bec87dfe14b1184ba5e38a5f568cc766f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PresentationRule/Variant1162973bc855c8a911f6a4bc82b85dd6883c570a21556e13079ea870ab78fe44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
