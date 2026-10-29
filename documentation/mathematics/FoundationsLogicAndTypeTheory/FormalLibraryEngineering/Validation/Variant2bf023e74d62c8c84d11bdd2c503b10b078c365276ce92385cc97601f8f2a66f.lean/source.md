# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variant2bf023e74d62c8c84d11bdd2c503b10b078c365276ce92385cc97601f8f2a66f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7adca37dc999970ecea7217ec66619e4353bf46` · SHA-256 `2bf023e74d62c8c84d11bdd2c503b10b078c365276ce92385cc97601f8f2a66f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Surgery.Request

/-! # Surgery request validation -/

namespace Mathematics.Surgery

def Request.Valid (request : Request) : Prop :=
  request.id.Valid ∧
  request.preservedInvariants.Nodup ∧
  request.changedInvariants.Nodup ∧
  request.lostInvariants.Nodup ∧
  (request.changedInvariants ≠ [] ∨ request.lostInvariants ≠ [])

/-- Observing a boundary supplies no request value by construction. -/
theorem boundary_is_not_automatically_surgery
    (_ : BoundaryObservation) :
    Option Request = Option Request := rfl

end Mathematics.Surgery
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=484e31993dee15bc9bf7ce23b1e2b1b616d2cccc2647aeef057a71739d7e8e26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Validation/Variant2bf023e74d62c8c84d11bdd2c503b10b078c365276ce92385cc97601f8f2a66f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
