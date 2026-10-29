# Checked Checked Modules — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68169b7e1088b97c7e8fc987bcb110659b934785` · SHA-256 `5de85d1aa0e94b1d21f7835f173047d2ca583b6a1671fde1a2c51ea04049fa19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Checked

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

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b58e29ecc4787e06a80160005514eb9d09846e10e75dfc6bd39f4b8dbc54190 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Checked/Variant5de85d1aa0e94b1d21f7835f173047d2ca583b6a1671fde1a2c51ea04049fa19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
