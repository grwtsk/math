# Destination — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `16388f45ad0c58c1e7e5fe8649f631381cf35e4a` · SHA-256 `2c1ab00b7162acf6b5440e3848b7a41ea1f99848cacb2e69006e4871cfcf8ed5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-! # Positive-reflection destinations -/

namespace Mathematics.Reflection

inductive Destination
  | sourceProject
  | mathlib
  | bridgeProject
  | documentation
  | data
  deriving DecidableEq, Repr

end Mathematics.Reflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ce7927f80bf58730d7715485ba283dea236669bb3132cd7254150bc3b92e778 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Destination/Variant2c1ab00b7162acf6b5440e3848b7a41ea1f99848cacb2e69006e4871cfcf8ed5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
