# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedmodulesCountF3acdd737477.Variant849f8cb13850e97750a35064d3b977335b99ce35394d53a4df779a4933788c82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19d2d369a4b596da7c9ad7b1df862ff866ea8b90` · SHA-256 `849f8cb13850e97750a35064d3b977335b99ce35394d53a4df779a4933788c82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.finite_bit_boundary.modules_count_b62c437365ca

/-!
Checked first-party surface.

Only the checked source band imported here may flow into `Formal.Kernel`.
-/

namespace Formal.Surface.Checked

def checkedModules : List String :=
  [ "Formal.Checked.Geometry"
  , "Formal.Checked.BoundaryMatriciant"
  , "Formal.Checked.Projection.Balance"
  , "Formal.Checked.Projection.Flatten"
  ]

theorem checkedModules_count : checkedModules.length = 4 := by
  rfl

end Formal.Surface.Checked
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21ffe588c5bf485f30f2c5f8ee7fc3d2f964d8dbc243e89f34b9921358e02148 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CheckedmodulesCountF3acdd737477/Variant849f8cb13850e97750a35064d3b977335b99ce35394d53a4df779a4933788c82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
