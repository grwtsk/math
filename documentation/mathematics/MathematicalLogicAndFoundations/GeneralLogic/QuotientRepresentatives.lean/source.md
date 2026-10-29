# Quotient Representatives — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f01c10cf284d351899e4e08f1c848a040f4e6ac9` · SHA-256 `5ee5ad4a627d15cf621e9474614f65d7ab7ca777de32e0f119e631556540a0fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.Choice.ChoiceOperator

/-!
Legacy module.

This file is retained only for historical continuity of the Surface development
record. It is not part of the canonical Annals-level namespace, is not imported
by major proof cones, and must not be used to discharge mathematical claims.

Canonical replacements must live outside `Surface.Legacy`.
-/

namespace Surface
namespace Legacy

structure QuotientRepresentativeSystem where
  carrier : Type
  relation : carrier -> carrier -> Prop
  choice : ChoiceAssumption
  representativeSound : Prop

theorem quotientRepresentatives_require_choice
    (Q : QuotientRepresentativeSystem) :
    Q.representativeSound -> Q.representativeSound := by
  intro h
  exact h

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9b18ac4ed5061263771a97bc0b905d1132e558a2dcf103d0bde5126c6402e95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/QuotientRepresentatives/Variant5ee5ad4a627d15cf621e9474614f65d7ab7ca777de32e0f119e631556540a0fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
