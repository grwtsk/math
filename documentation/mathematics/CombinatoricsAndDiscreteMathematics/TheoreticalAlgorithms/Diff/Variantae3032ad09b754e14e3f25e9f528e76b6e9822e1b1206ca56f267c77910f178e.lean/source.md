# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Diff.Variantae3032ad09b754e14e3f25e9f528e76b6e9822e1b1206ca56f267c77910f178e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bf2ce3988b1e8a76dcb493d185c8395680c5a4d` · SHA-256 `ae3032ad09b754e14e3f25e9f528e76b6e9822e1b1206ca56f267c77910f178e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Extractor.Core

/-!
# Environment-diff classifications
-/

namespace MathDiscovery.Extractor

inductive DeclarationChange
  | added
  | removed
  | renamed
  | movedModule
  | typeChanged
  | valueChanged
  | proofChanged
  | dependencyChanged
  | trustClosureChanged
  | visibilityChanged
  | attributeChanged
  | documentationChanged
  | sourceOnlyChanged
  | unchanged
  deriving DecidableEq, Repr, Inhabited

structure DeclarationDiff where
  before : Option DeclarationId
  after : Option DeclarationId
  beforeName : Option Lean.Name
  afterName : Option Lean.Name
  changes : Array DeclarationChange
  statementIdentityStable : Bool
  implementationIdentityStable : Bool
  deriving DecidableEq, Repr, Inhabited

end MathDiscovery.Extractor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb5fff358439bd1e1ce3f5bd9cf07857ad4a8a71311908bf0859789c9874cf84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Diff/Variantae3032ad09b754e14e3f25e9f528e76b6e9822e1b1206ca56f267c77910f178e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
