# HEN12 Extension Nonclosure — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9573aacf876ccf229ca904938f08e866c51c293` · SHA-256 `074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
The known nonalgebraizable extension prevents the effective Henselian target
from being an ambient extension-closed (Serre) subcategory in the obstructed
characteristic scopes.
-/
theorem hen12_extensionNonclosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN12Claim S :=
  registry.hen12

end FCRS.Algebraization.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe0c9eea9ee4fe2e74a83ef5e4a58fbdf25a80dfeff0453befd75ffadfd732a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HEN12ExtensionNonclosure/Variant074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
