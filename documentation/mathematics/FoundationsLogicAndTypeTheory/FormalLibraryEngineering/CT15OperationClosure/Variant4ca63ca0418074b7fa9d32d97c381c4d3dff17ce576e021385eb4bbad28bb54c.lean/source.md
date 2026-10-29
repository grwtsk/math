# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT15OperationClosure.Variant4ca63ca0418074b7fa9d32d97c381c4d3dff17ce576e021385eb4bbad28bb54c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e140ce2cedd4ac358de981347df216c74699bfc1` · SHA-256 `4ca63ca0418074b7fa9d32d97c381c4d3dff17ce576e021385eb4bbad28bb54c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-15: tensor, base-change, and localization closure.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct15_operationClosure
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT15Claim S :=
  registry.ct15

end FCRS.Theorems
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5d858efae4a2a189dbd5bc306ffbeb7da54b84086ac091cc77306a54298eb1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CT15OperationClosure/Variant4ca63ca0418074b7fa9d32d97c381c4d3dff17ce576e021385eb4bbad28bb54c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
