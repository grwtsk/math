# Analytic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f99f5eea7ecceff3bc2e05c7f7d4186312c965e` · SHA-256 `92964460e5c89455464751f4af895949852b0e736904ccb3be10a8c84ce136aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Blueprint.Analytic.Foundation
import Formal.Blueprint.Analytic.Geometry
import Formal.Blueprint.Analytic.ComplexZeta
import Formal.Blueprint.Analytic.MellinPerron
import Formal.Blueprint.Analytic.FourierTauberian
import Formal.Blueprint.Analytic.PrimeAsymptotics
import Formal.Blueprint.Analytic.ArithmeticConstants

/-!
Analytic blueprint surface.

This module exposes the conceptual boundaries of the analytic blueprint layer.
It deliberately imports only marker modules, not the unresolved theorem corpus.
-/

namespace Formal.Blueprint.Analytic

def conceptualBoundaries : List String :=
  [ "Foundation"
  , "Geometry"
  , "ComplexZeta"
  , "MellinPerron"
  , "FourierTauberian"
  , "PrimeAsymptotics"
  , "ArithmeticConstants"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 7 := by
  rfl

end Formal.Blueprint.Analytic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2455c71cab1becf9e8f156707c98272f4d36489077833114a80a84d6cd8d7bce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Analytic/Variant92964460e5c89455464751f4af895949852b0e736904ccb3be10a8c84ce136aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
