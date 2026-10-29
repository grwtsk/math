# Certificate Certificate — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35ab2910d5991ac49f0ceb0e5cf18c2fa135d7bf` · SHA-256 `706bffd7f110f81e601feaedc687a87a2f928b058736cccad46687b2e29b6024`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/-!
# Folder.Linear.Certificate

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: linear.certificate
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

namespace Folder
namespace Linear

structure Certificate (Claim : Prop) where
  verify : Claim

theorem Certificate.sound {Claim : Prop}
    (C : Certificate Claim) :
    Claim :=
  C.verify

end Linear
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1405f0d39bcac03ce71560ef5154d5bfdedeca8f0f5299b78f16d5afb74de87b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Certificate/Variant706bffd7f110f81e601feaedc687a87a2f928b058736cccad46687b2e29b6024.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
