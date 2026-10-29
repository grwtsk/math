# Compact Boundary — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5518efc18f9745c5a0e7e7fa11c81cb7d2b55c0d` · SHA-256 `6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
set_option autoImplicit false

namespace Think.Compact

structure CompactSurveyBoundary where
  targetCount : Nat
  primitiveCount : Nat
  conjectureMentionCount : Nat
  theoremAuthorityImported : Bool
deriving Repr

def compactSurveyBoundary : CompactSurveyBoundary :=
  { targetCount := 604
    primitiveCount := 304
    conjectureMentionCount := 47
    theoremAuthorityImported := false }

theorem compactSurveyBoundary_noTheoremAuthority :
    compactSurveyBoundary.theoremAuthorityImported = false := by
  rfl

end Think.Compact
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=053899e5ecea4879145bf90020a76bc40dea9c7adbf0555f383deceb9bfd4fc2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactBoundary/Variant6d31b1bd41b9a605de1e5a1aa74a984ec3ede4bfe7ebd3881e72e3d780c277e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
