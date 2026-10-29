# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Canonical.Variant0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `877c78c212a5054a2d14947be45d9c34d6d87bef` · SHA-256 `0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Progression.State

/-! # Content-addressed progression and carrier identity -/

namespace Mathematics.Progression

structure Identity where
  progressionDigest : Digest
  profileDigest : Digest
  deriving DecidableEq, Repr

/-- Carrier identity depends on the complete progression and interpretation
profile, never on an endpoint label alone. -/
structure CarrierIdentity where
  progressionId : ProgressionId
  identity : Identity
  deriving DecidableEq, Repr

theorem carrier_identity_ext
    {left right : CarrierIdentity}
    (hprogression : left.progressionId = right.progressionId)
    (hdigests : left.identity = right.identity) :
    left = right := by
  cases left
  cases right
  simp_all

end Mathematics.Progression
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=786a8aaa4cec478f1dbb48abc5f3d74a4f2d9fdc675b6dc3afb01593c037dab0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variant0d0106838331a34b02743f25c0ef59ed6167fa7a8e9252f1d17329b20ff04382.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
