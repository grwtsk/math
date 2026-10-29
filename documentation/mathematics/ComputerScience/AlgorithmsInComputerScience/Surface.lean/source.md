# Surface — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `198ac6b4a3035217bcceab2b8b31370eb9747aa2` · SHA-256 `96259a972b4059223fa8341ceb61c1cb0d95580884f6b459d8651d1205fc5f2d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Surface.Checked
import Formal.Surface.Blueprint
import Formal.Surface.Patches
import Formal.Surface.External
import Formal.Surface.Archive
import Formal.Algorithm
import Formal.Conceptual

/-!
Unified Formal program surface.

This module exposes the authority-band entry points without importing the
large blueprint, patch, external, or archive corpora. It also imports the
conceptual map for navigation. The checked kernel imports only
`Formal.Surface.Checked`.
-/

namespace Formal.Surface

def authorityBands : List String :=
  [ "checked"
  , "blueprint"
  , "patches"
  , "external"
  , "archive"
  ]

theorem authorityBands_count : authorityBands.length = 5 := by
  rfl

def conceptualMapModule : String := "Formal.Conceptual"

def bandVocabularyModule : String := "Formal.Band"

def layoutAlgorithmModule : String := "Formal.Algorithm"

end Formal.Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36a36dace4abe04a2a27b1a546600f6991444d80b352f53ca977fa39b09c42ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surface/Variant96259a972b4059223fa8341ceb61c1cb0d95580884f6b459d8651d1205fc5f2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
