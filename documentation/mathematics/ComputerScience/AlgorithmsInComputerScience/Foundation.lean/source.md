# Foundation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13e1135c624e073907c1c266dce1117a31570a03` · SHA-256 `9b26d9f021b70857ca84b8ec73d66e51ef4010a92e6348a4912b9f8c9136cffe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Analytic blueprint foundation boundary.

This marker names foundational analytic blueprint files. It does not import the
files in this directory, because those files may contain unresolved external
imports or theorem obligations.
-/

namespace Formal.Blueprint.Analytic.Foundation

def files : List String :=
  [ "Auxiliary"
  , "Defs"
  ]

theorem files_count : files.length = 2 := by
  rfl

end Formal.Blueprint.Analytic.Foundation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9f06ed736c9ae28f9a2dbd8712cce645c49ff2b8097265585780bf3cdc0132e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Foundation/Variant9b26d9f021b70857ca84b8ec73d66e51ef4010a92e6348a4912b9f8c9136cffe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
